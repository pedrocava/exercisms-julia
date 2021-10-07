"""
    count_nucleotides(strand)

The count of each nucleotide within `strand` as a dictionary.

Invalid strands raise a `DomainError`.

"""

function count_nucleotides(strand)

    nucleotides = ['A', 'C', 'G', 'T']

    if any(x -> ~ (x in nucleotides), strand)
        throw(DomainError("Invalid"))
    end

    count = map(x -> length(filter(y -> y == x, strand)), nucleotides)

    return Dict(zip(nucleotides, count))

end
