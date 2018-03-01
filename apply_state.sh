#!/bin/bash

salt '*' saltutil.refresh_pillar
salt '*' state.apply
