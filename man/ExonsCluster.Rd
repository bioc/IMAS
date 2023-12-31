\name{ExonsCluster}
\alias{ExonsCluster}
\title{
    Construct representative Exons
}
\description{
    This function constructs representative Exons.
}
\usage{

    ExonsCluster(ASdb,GTFdb,Ncor=1,txTable=NULL)
}
\arguments{
    \item{ASdb}{
        An ASdb object containing "SplicingModel" from the \code{\link{Splicingfinder}} funtion.
    }
    \item{GTFdb}{
        A TxDb object in the \pkg{GenomicFeatures} package.
    }
    \item{Ncor}{
        The number of cores for multi-threads function.
    }
    \item{txTable}{
        The matrix of transcripts including transcript IDs, Ensembl gene names, Ensembl transcript names, transcript start sites, and transcript end sites.
    }
}

\value{
    ASdb containing representative exons.
}
\author{
    Seonggyun Han, Younghee Lee
}
\examples{
    sampleDB <- system.file("extdata", "sampleDB", package="IMAS")
    transdb <- loadDb(sampleDB)
    \dontrun{
    ASdb <- Splicingfinder(transdb,Ncor=1)
    ASdb <- ExonsCluster(ASdb,transdb)
    }
}