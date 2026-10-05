# Write your MySQL query statement below

select sample_id , dna_sequence , species ,
       if (dna_sequence like 'ATG%',1,0) as has_start,
       if (dna_sequence like '%TAA'
            OR dna_sequence like '%TAG'
            OR dna_sequence like  '%TGA',1,0)
         as has_stop,
       if (dna_sequence like '%ATAT%',1,0) as has_atat,
       if(dna_sequence like '%ggg%',1,0) as has_ggg
from Samples
order by sample_id asc
       
