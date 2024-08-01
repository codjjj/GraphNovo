from genova.data.dataset import GenovaDataset
import hydra
import wandb
import os
import genova
import numpy as np
import pandas as pd
import torch.distributed as dist
from hydra.utils import get_original_cwd
from omegaconf import DictConfig, OmegaConf

@hydra.main(version_base=None, config_path="configs", config_name="config")
def main(cfg: DictConfig)->None:
    train_spec_header = pd.read_csv("training_dataset/preprocessed/training_dataset.csv",index_col='Spec Index')
    ds=GenovaDataset(cfg,spec_header=train_spec_header,dataset_dir_path="training_dataset/preprocessed/")
    

if __name__=='__main__':
    main()
