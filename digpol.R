## our digitization function for grass tufts

digpols <- function() {
	require('sp')
	iter <- 1
	an <- 'y'
	grasspols <- NULL
	allpols <- list()
	while (an != 'n') {
		grass <- locator()
		grasspols <- Polygon(rbind(cbind(grass$x, grass$y), cbind(grass$x[1],grass$y[1])))
		bb <- Polygons(list(grasspols), ID = paste('grass',iter,sep=''))
		allpols[[iter]] <- bb
		plot(SpatialPolygons(allpols), lwd=2, add=TRUE)
		an <- readline(prompt = "Another(y/n)? ")
		if (an == 'y') { iter <- iter + 1 } else {break}}
	cc <- SpatialPolygons(allpols)
return(cc)
}

