#!/bin/bash
pdfcrop --margins '0 0 0 0' fig5_1_action_a1.pdf fig5_1_action_a1.pdf
pdfcrop --margins '0 0 0 0' fig5_1_action_a2.pdf fig5_1_action_a2.pdf

pdfcrop --margins '0 0 0 0' fig5_2_action_a1.pdf fig5_2_action_a1.pdf
pdfcrop --margins '0 0 0 0' fig5_2_reward_a1.pdf fig5_2_reward_a1.pdf

pdfcrop --margins '0 0 26 0' fig6_1.pdf fig6_1.pdf
pdfcrop --margins '0 0 26 0' fig6_2_a1.pdf fig6_2_a1.pdf
pdfcrop --margins '0 0 26 0' fig6_2_a4.pdf fig6_2_a4.pdf
pdfcrop --margins '0 0 26 0' fig6_3.pdf fig6_3.pdf

pdfcrop --margins '0 0 26 0' ieee_rts_profiles.pdf ieee_rts_profiles.pdf

pdfcrop ngt_grid.pdf ngt_grid.pdf
pdfcrop ngt_gen.pdf ngt_gen.pdf