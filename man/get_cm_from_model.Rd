% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/extract_model_properties.R
\name{get_cm_from_model}
\alias{get_cm_from_model}
\title{Extract compositional mean from model object}
\usage{
get_cm_from_model(model, comp_labels, transf_labels)
}
\arguments{
\item{model}{Model to use in estimates/predictions.}

\item{comp_labels}{The labels of the compositional columns.}

\item{transf_labels}{Ilr-transformed compositional column labels.}
}
\value{
Dataset used to create model with compositional columns on original scale.
}
\description{
Used by predict_fit_and_ci and plot_transfers.
}
\examples{
lm_outcome <- comp_model(
type = "linear",
outcome = "BMI",
covariates = c("agegroup", "sex"),
data = simdata,
comp_labels = c("vigorous", "moderate", "light", "sedentary", "sleep"),
det_limit = 0.00119
)

comp_labels <- c("vigorous", "moderate", "light", "sedentary", "sleep")
tl <- transf_labels(comp_labels = comp_labels, transformation_type = "ilr")
get_cm_from_model(model = lm_outcome, comp_labels = comp_labels,
transf_labels = tl)
}
