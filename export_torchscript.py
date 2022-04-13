import argparse
import torch
import env
import json
import models

def parse_args(parser):
    parser.add_argument('--checkpoint_file', type=str, required=True,
                        help='full path to the vocoder checkpoint file')
    parser.add_argument('-o', '--output', type=str, default="output/torchscript/model.pt",
                        help='filename for the HiFi-GAN TorchScript model')
    return parser

def main():
    parser = argparse.ArgumentParser(description='Export models to TorchScript')
    parser = parse_args(parser)
    args, unk_args = parser.parse_known_args()
    print(args)

    zero = torch.full((1, 80, 10), -11.52).cuda()
    with open("config_v1.json") as f:
        data = f.read()
    h = env.AttrDict(json.loads(data))
    vocoder = models.Generator(h).cuda()
    vocoder.load_state_dict(torch.load(args.checkpoint_file)["generator"])
    vocoder.remove_weight_norm()
    vocoder.eval()
    with torch.no_grad():
        traced_vocoder = torch.jit.trace(vocoder, zero)
        torch.jit.save(traced_vocoder, args.output)

if __name__ == '__main__':
    main()
