# Make picture from Willow Road
# TODO: Make into shiny app


c1 <- 1;
c2 <- 1;
w <- 0
n <- 12 # Number of changes in w
w2 <- 0.4/n # change in w
h <- 0
o <- 1
col <- c('blue', 'green')

#old <- par()
png("willow.png", res=300, units='in', width=11, height=11)
par(mar=c(0,0,0,0))
par(oma=c(3,3,3,3))
plot(c(0, 2*n+2), c(0, 2*n + 2), type='n', axes=FALSE, xlab="", ylab="",
     xaxs = "i", yaxs = "i")

for(i in 1 : (2*n+1)^2) {

    print (c(w, h))

    if (o == 1) {wc <- w; hc <- h} else {wc <- h; hc <- w}

    xs <- c(c1-wc, c1-wc, c1+wc, c1+wc)
        ys <- c(c2-hc, c2+hc, c2+hc, c2-hc)
	    polygon(xs, ys, col=col[1], border=col[2])

    if (c1 > (n) ) {w <- w - w2} else {w <- w + w2}
        if (c1 == 2*n+1) {c1 <- 1; c2 <- c2 + 1; w <- 0;
	                      if(c2 > (n+1)) {h <- h-w2} else {h <- h+w2}
			                        } else {c1 <- c1+1}

    o <- -1 * o

}
dev.off()