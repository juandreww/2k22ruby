formatter = "%{grab} %{lalamove} %{gojek} %{grab}"

puts formatter % {grab: "grab", lalamove: "lalamove", gojek: "gojek"}
puts formatter % {grab: "ada", lalamove: "tidak ada", gojek: "tidak ada"}
puts formatter % {grab: true, lalamove: false, gojek: true}

puts formatter % {grab: "delivery 1stop solution", lalamove: "paket si kuning", gojek: "si paling hijau"}
puts formatter % {grab: 1, lalamove: 2, gojek: 3}
puts formatter % {grab: "gak susah", lalamove: "siap bergerak", gojek: "semangat" }