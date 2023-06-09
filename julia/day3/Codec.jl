module Codec

using Images, FFTW

function blockdct6(img)
pixels = convert(Array{Float32}, img)
y, x = size(pixels)

outx = Int(floor(x/8))
outy = Int(floor(y/8))

bx = 1:8:outx*8
by = 1:8:outy*8

mask = zeros(8,8)
mask[1:3, 1:3] = [ 1 1 1; 1 1 0; 1 0 0 ]

freqs = zeros(Float32, (outy*8, outx*8))

for i = bx, j = by
freqs[j:j+7, i:i+7] = dct(pixels[j:j+7, i:i+7])
freqs[j:j+7, i:i+7].*= mask
end

return freqs
end

function blockidct(freqs)
y, x = size(freqs)
bx = 1:8:x
by = 1:8:y

pixels = zeros(Float32, size(freqs))
for i = bx, j = by
pixels[j:j+7, i:i+7] = idct(freqs[j:j+7, i:i+7])
end
return Gray.(pixels)
end

end
