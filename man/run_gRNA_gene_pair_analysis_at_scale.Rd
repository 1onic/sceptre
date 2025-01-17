% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/scaling_up_functs.R
\name{run_gRNA_gene_pair_analysis_at_scale}
\alias{run_gRNA_gene_pair_analysis_at_scale}
\title{Run gRNA-gene pair analysis at scale}
\usage{
run_gRNA_gene_pair_analysis_at_scale(
  pod_id,
  gene_precomp_dir,
  gRNA_precomp_dir,
  results_dir,
  log_dir,
  gene_matrix,
  combined_perturbation_matrix,
  covariate_matrix,
  regularization_amount,
  side,
  B,
  full_output
)
}
\arguments{
\item{pod_id}{id of the pod to compute}

\item{gene_precomp_dir}{the directory containing the results of the gene precomputation}

\item{gRNA_precomp_dir}{the directory containing the results of the gRNA precomputation}

\item{results_dir}{directory in which to store the results}

\item{log_dir}{(optional) directory in which to sink the log file}

\item{gene_matrix}{a gene-by-cell expression matrix; the rows (i.e., gene IDs) and columns (i.e., cell barcodes) should be named}

\item{combined_perturbation_matrix}{a binary matrix of perturbations (i.e., gRNA group-to-cell assignments); the rows (i.e., gRNA groups) and columns (i.e., cell barcodes) should be named.}

\item{covariate_matrix}{the cell-specific matrix of technical factors, ideally containing the following covariates: log-transformed gene library size (numeric), log-transformed gRNA library size (numeric), percent mitochondrial reads (numeric), and batch (factor). The rows (i.e., cell barcodes) should be named}

\item{regularization_amount}{non-negative number specifying the amount of regularization to apply to the negative binomial dispersion parameter estimates}

\item{side}{sidedness of the test; one of "both," "left," and "right"}

\item{B}{number of resamples to draw for the conditional randomization test}

\item{full_output}{return the full output (TRUE) or a simplified, reduced output (FALSE; default)?}
}
\description{
Runs the gene-gRRNA pair ananysis across an entire pod of gene-gRNA pairs.
}
