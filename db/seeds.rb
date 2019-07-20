require_relative('../models/brands')
require_relative('../models/categories')
require_relative('../models/products')


brand1 = Brand.new({
  'name' => 'Benefit',
  'info' => 'Benefit Cosmetics LLC is a manufacturer of cosmetics founded and headquartered in San Francisco, California selling at over 2,000 counters in more than 30 countries. It is a subsidiary of LVMH.'
  })

brand2 = Brand.new({
  'name' => 'LOreal Paris',
  'info' => 'LOréal S.A. is a French personal care company headquartered in Clichy, Hauts-de-Seine with a registered office in Paris. It is the worlds largest cosmetics company and has developed activities in the field concentrating on hair colour, skin care, sun protection, make-up, perfume, and hair care.'
  })

brand3 = Brand.new({
  'name' => 'MAC',
  'info' => 'MAC Cosmetics, stylized as M·A·C, is a cosmetics manufacturer founded in Toronto, Canada in 1984 by Frank Toskan and Frank Angelo. The company is headquartered in New York City and became part of the Estée Lauder Companies in 1998. MAC is an acronym for Make-up Art Cosmetics.'
  })

brand4 = Brand.new({
  'name' => 'Rimmel',
  'info' => 'Rimmel is a British cosmetics brand, owned by Coty, Inc. The House of Rimmel was founded by Eugène Rimmel as a perfumery in 1834 in Regent Street, London, England. Within a year of opening, Rimmel came to create many make-up products including his best-known mascara.'
  })

  brand1.save()
  brand2.save()
  brand3.save()
  brand4.save()

  category1 = Category.new({'name' => 'complexion'})
  category2 = Category.new({'name' => 'eyes'})
  category3 = Category.new({'name' => 'lips'})

  category1.save()
  category2.save()
  category3.save()
