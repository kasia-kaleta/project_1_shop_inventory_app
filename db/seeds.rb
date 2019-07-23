require_relative('../models/brands')
require_relative('../models/categories')
require_relative('../models/products')

Product.delete_all()
Brand.delete_all()
Category.delete_all()




brand1 = Brand.new({
  'name' => 'Benefit',
  'info' => 'Benefit Cosmetics LLC is a manufacturer of cosmetics founded and headquartered in San Francisco, California selling at over 2,000 counters in more than 30 countries. It is a subsidiary of LVMH.',
  'img' => '../images/benefit_logo.jpg'
  })

brand2 = Brand.new({
  'name' => 'LOreal Paris',
  'info' => 'LOréal S.A. is a French personal care company headquartered in Clichy, Hauts-de-Seine with a registered office in Paris. It is the worlds largest cosmetics company and has developed activities in the field concentrating on hair colour, skin care, sun protection, make-up, perfume, and hair care.',
  'img' => '../images/loreal_logo.jpg'
  })

brand3 = Brand.new({
  'name' => 'MAC',
  'info' => 'MAC Cosmetics, stylized as M·A·C, is a cosmetics manufacturer founded in Toronto, Canada in 1984 by Frank Toskan and Frank Angelo. The company is headquartered in New York City and became part of the Estée Lauder Companies in 1998. MAC is an acronym for Make-up Art Cosmetics.',
  'img' => '../images/mac_logo.jpg'
  })

brand4 = Brand.new({
  'name' => 'Rimmel',
  'info' => 'Rimmel is a British cosmetics brand, owned by Coty, Inc. The House of Rimmel was founded by Eugène Rimmel as a perfumery in 1834 in Regent Street, London, England. Within a year of opening, Rimmel came to create many make-up products including his best-known mascara.',
  'img' => '../images/rimmel_logo.jpg'
  })

brand1.save()
brand2.save()
brand3.save()
brand4.save()

category1 = Category.new({
  'name' => 'Complexion',
  'description' => 'This category contains face products like foundations, powders, blushes, bronzers, highlighters, etc.'})

category2 = Category.new({
    'name' => 'Eyes',
    'description' => 'This category contains eye makeup products like mascaras, eye liners, eye shadows, eye brow pencils, etc.'})

category3 = Category.new({
    'name' => 'Lips',
    'description' => 'This category contains lip makeup products like lip liners, lipsticks, lip glosses, etc.'})

category1.save()
category2.save()
category3.save()

product1 = Product.new({
    'name' => 'Volume Million Lashes Mascara',
    'description' => 'Millionizer Brush - a multitude of bristles separate lashes for a fanned-out effect. Excess Wiper - in-built wiper system removes excess mascara, wiping brush free of clumps.',
    'quantity' => 50,
    'buying_cost' => 8.70,
    'selling_price' => 10.99,
    'brand_id' => brand2.id,
    'category_id' => category2.id
    })

product2 = Product.new({
    'name' => 'Hoola Bronzer',
    'description' => 'Bronzing powder Hoola is the perfect contour shade to acomplish sun-kissed glow. Great for contouring, soft, natural-bristle brush included.',
    'quantity' => 20,
    'buying_cost' => 22.20,
    'selling_price' => 26.00,
    'brand_id' => brand1.id,
    'category_id' => category1.id
    })

product3 = Product.new({
  'name' => 'Wonder Luxe Volume Mascara',
  'description' => 'Conditioning mascara,infused with argan, maracuja, marula & camellia oils.Smudge-proof formula, dermatologist & ophthalmologist tested',
  'quantity' => 50,
  'buying_cost' => 6.12,
  'selling_price' => 8.99,
  'brand_id' => brand4.id,
  'category_id' => category2.id
    })

product4 = Product.new({
    'name' => 'Studio Fix Fluid Foundation',
    'description' => 'The oil-free foundation offers a shine-control base with a broad spectrum UVA /UVB SPF 15 and PA++ protection.',
    'quantity' => 50,
    'buying_cost' => 23.90,
    'selling_price' => 27.00,
    'brand_id' => brand3.id,
    'category_id' => category1.id
      })

product5 = Product.new({
  'name' => 'Precisely, My Brow pencil',
  'description' => 'Waterproof mechanical eyebrow pencil with twist-up tip and built-in spoolie.',
  'quantity' => 5,
  'buying_cost' => 17.80,
  'selling_price' => 21.50,
  'brand_id' => brand1.id,
  'category_id' => category2.id
        })

product6 = Product.new({
    'name' => 'Ruby Woo Lipstick',
    'description' => 'The iconic product that made M·A·C famous. This creamy rich formula features high colour payoff in a no-shine matte finish.',
    'quantity' => 30,
    'buying_cost' => 15.20,
    'selling_price' => 17.50,
    'brand_id' => brand3.id,
    'category_id' => category3.id
        })

product7 = Product.new({
    'name' => 'Stay Matte Liquid Lip Colour',
    'description' => 'Long-lasting lipstick formula with intense colour pay off. Velvet matte finish',
    'quantity' => 40,
    'buying_cost' => 4.20,
    'selling_price' => 5.99,
    'brand_id' => brand4.id,
    'category_id' => category3.id
        })

product8 = Product.new({
    'name' => 'High Beam Highlighter',
    'description' => 'Satiny pink liquid highlighter that accents cheek & brow bones for a dewy, radiant glow.',
    'quantity' => 0,
    'buying_cost' => 18.20,
    'selling_price' => 22.00,
    'brand_id' => brand1.id,
    'category_id' => category1.id
        })

product9 = Product.new({
    'name' => 'Color Riche Plump and Shine Lipstick',
    'description' => 'Highly pigmented, lip-plumping formula. Hydrating formula with high-shine finish',
    'quantity' => 60,
    'buying_cost' => 6.90,
    'selling_price' => 8.99,
    'brand_id' => brand2.id,
    'category_id' => category3.id
        })

product10 = Product.new({
    'name' => 'Stay Matte Pressed Powder',
    'description' => 'Skin-mattifying, shine-controlling powder. Up to 5 hours of wear',
    'quantity' => 35,
    'buying_cost' => 3.20,
    'selling_price' => 3.99,
    'brand_id' => brand4.id,
    'category_id' => category1.id
        })


product1.save()
product2.save()
product3.save()
product4.save()
product5.save()
product6.save()
product7.save()
product8.save()
product9.save()
product10.save()
