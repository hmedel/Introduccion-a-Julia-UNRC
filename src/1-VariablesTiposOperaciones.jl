### A Pluto.jl notebook ###
# v0.19.19

using Markdown
using InteractiveUtils

# ╔═╡ e756fe01-6028-4336-b147-e0537989bab9
using PlutoUI

# ╔═╡ 719ec702-0f6b-4f42-b53d-07604a338c9d
html"""<style>
main {
    max-width: 1500px;
}

pluto-notebook h1 {
  	font-size: 60px;
}

pluto-notebook h2 {
  	font-size: 40px;
}

html {
  	font-size: 25px;
}

body {
  	font-size: 25px;
}
"""

# ╔═╡ ac1d6a24-01fc-4e18-8f46-8e49f240d96d
html"<button onclick='present()'>Presentación</button>"

# ╔═╡ 722ac6c0-6730-4a61-8e0e-3c06eb3d4f45
md"""
# Programación en Julia:  Primeros pasos
Variables, tipos y operaciones

**Héctor Medel**

**Benjamín Pérez**
"""

# ╔═╡ 56853c2d-37c9-4470-80ec-4af67e2e6521
md"""
## Existen distintos tipos de datos en Julia
Por ejemplo: Char, Int64, Float64
"""

# ╔═╡ 5545e7a7-7f77-4333-811c-ffc273d18930
y = 7

# ╔═╡ d2b293fa-21ab-4e81-b614-09476a2c9b35
typeof(y)

# ╔═╡ 91b39963-86ff-4a57-9c7e-e6b8ada53154
x = "CADI"

# ╔═╡ 2ee9d938-2249-4563-860a-752d3599e01e
typeof(x)

# ╔═╡ 9a373fdc-0302-4597-9656-3393e004fc9e
w = 2.5;   # Agregamos ; para que no imprima el resultado

# ╔═╡ d9299fa1-6cb0-4567-9a0e-0caa860e5fe7
typeof(w)

# ╔═╡ a783ad85-7f97-4a14-959e-478ea23f5993
y+z

# ╔═╡ 91e7a326-594e-4ca9-abd7-9a7b47b96885
y+x

# ╔═╡ 91c8f652-c971-40cd-84a2-a15ab732f573
y+w

# ╔═╡ e67641ac-3ffa-4d5c-b624-f4a2e61d9e3c
md"""
## Algunas ideas para nombrar variables
- Minúsculas con múltiples palabras separadas por un guion bajo ( _ ).
- Nombres cortos.
- Podemos usar símbolos Unicode.  Por ejemplo, **\alpha[TAB]** despliega $\alpha$.
"""

# ╔═╡ 4c86098d-1599-49b5-b5a3-10c5c7999b08
current_time = 0.7

# ╔═╡ 3bd2f608-cd46-414d-bb24-80c69258a80b
α = 2

# ╔═╡ 6f44af70-fe78-4807-9430-86e4e2edb2da
md"""
Los comentarios se agregan usando el símbolo **#**
"""

# ╔═╡ 3394a9bd-51d6-491d-b6ef-724758b60cca
β = 3.1 # Este es un comentario

# ╔═╡ f1d01fce-34e5-448e-bc63-fe1ac07ff958
md"""
Para desplegar valores usamos la funcion **print()** o **println()**
"""

# ╔═╡ 6c09306b-b10e-4bb5-93c6-24944cfddced
print(β)

# ╔═╡ 8285477d-0d59-461d-9ae0-41d53ac43433
md"""
Incluso podemos agregar texto y el valor de una variable usando el mismo comando
"""

# ╔═╡ 6d492b21-b4a0-409d-b23c-0eacb234efb2
print("El valor de la variable β es $(β)")

# ╔═╡ 0563cc01-7802-41fd-b8c5-f7229ee04942
md"""
## El sistema de tipos en Julia es único
- Julia se comporta de manera dinámica.  Es decir, una variable relacionada a una cantidad Int64, puede cambiar y estar relacionada a un String.
"""

# ╔═╡ 4ce97d5c-9741-4e8a-a656-58b362697779
begin   # Noten que en esta celda usamos multiples lineas de codigo!
	r = 10
	println(typeof(r))
	r = "Hola"
	println(typeof(r))
end

# ╔═╡ 88384487-585a-4d3c-a1cb-585fa3a12f0f
md"""
- Algo que podemos hacer es agregar el tipo de dato a una variable.  Esto lo hacemos con la sintaxis **variable::Tipo**
"""

# ╔═╡ 7c4bdbf9-3255-4763-826c-f133bb729af5
begin   # Noten que en esta celda usamos multiples lineas de codigo!
	a::Int64 = 10
	println(typeof(a))
	a = "Hola"
end

# ╔═╡ 49427684-fdb1-4a86-897c-8f92cec3f122
md"""
## Código estable en tipo
- En general, el tipo de una variable puede cambiar en Julia, pero esto puede afectar el rendimiento en la ejecución.
- De manera automática, Julia infiere el tipo de las variables.
- Para tener buen performance, necesitamos escribir código estable en tipo.  Es decir, cada variable que usamos en alguna función no cambie de tipo a lo largo de su ejecución.
- La jerarquía de tipos para datos numéricos es la siguiente.
"""

# ╔═╡ e4d03e7d-a093-4e39-b461-605e235abc4c
LocalResource("$(pwd())/Julia-number-type-hierarchy.svg")

# ╔═╡ 37e9f0c9-3661-4576-b67a-e5fb8a9a80db
md"""
## Conversión de variables
- Para convertir el tipo de variable usamos la siguiente instrucción **Type(Var)**
"""

# ╔═╡ 5fbb64b3-5506-4723-9c33-c5ef06db53e1
Float64(3)

# ╔═╡ 515d8b0f-e68d-4980-8fb0-38cd02a534c9
Int64("Hola")

# ╔═╡ 2d45dda0-7299-4cfd-bddf-e0a663642afe
md"""
## Las funciones matemáticas típicas se encuentran disponibles

Probemos con sqrt(), exp(), log(), sin(), cos(), rand()... 
"""

# ╔═╡ a9e44349-b5bd-455b-b03f-5e5f50480620
a1 = pi

# ╔═╡ e3367c5c-7cdc-4845-a2c6-26e4d56346d2
b1 = cos(a1)

# ╔═╡ d81836f4-4b86-4bdf-ad38-09c50619f799
b2 = exp(1.0)

# ╔═╡ 04cd88b0-f09d-4711-b227-bfd8f5822850
md"""
- En la documentación encontrarás más funciones.
- Algunas funciones especiales están implementadas en Pkgs que veremos más adelante (por ejemplo **GSL.jl**).
"""

# ╔═╡ 354928cd-a667-44b7-90fb-c76d1944285f
md"""
## El manejo de números complejos está bien soportado
- Las operaciones elementales como abs(), real(), imag(), exp(), están definidas para cantidades complejas.
"""

# ╔═╡ 989007da-e6a5-4498-bdb2-a27e277482e4
z1 = 4.0 + im*3.0

# ╔═╡ 9abdcda6-a6ac-4318-bd42-f72d743c89ee
typeof(z1)

# ╔═╡ 30fc2279-17ed-4667-8778-c8c6480aa2df
abs(z1), abs2(z1)

# ╔═╡ dfe878ea-f38a-4d5e-8769-7c183a707dea
real(z1), imag(z1)

# ╔═╡ e5451f12-21fd-40ab-9f53-93be8214f18f
md"""
## Tipo de dato **Char**

Un caracter (individual) corresponde a un **Char**
"""

# ╔═╡ 9635df63-96cb-427d-bbc4-4f56d4624a54
caracterA = 'α'

# ╔═╡ 9d7676fe-b006-49ab-bb3b-f0be1268e96c
typeof(caracterA)

# ╔═╡ d1c76725-0d3d-4eed-9167-5c32cf7e7d8d
Int16(caracterA)

# ╔═╡ 5ba7c90f-d148-415d-a755-6ceaa9a59f09
bitstring(Int(caracterA))

# ╔═╡ 8fcdd739-4f69-4731-8b9b-e8b8e09138d6
md"""
- Podemos hacer algo similar en la "dirección" opuesta.
"""

# ╔═╡ 01a9be0f-4def-4e94-ac48-e5a6d39d643f
Char(945)

# ╔═╡ fb21f6d1-0ab0-4d39-bc7f-3a7af8303c57
md"""
## Tipo de dato **String**

Un **String** consiste en un arreglo de caracteres.
"""

# ╔═╡ 7a8ee7ae-d333-4aca-a286-4d838595b74c
palabra = "Tecnologico"

# ╔═╡ 3428318e-995f-4e9a-8a8a-ec0d41fe1b0c
palabra[1]

# ╔═╡ b412ecd5-a2e5-4148-a632-bf71bad5e0bf
md"""
## Manejo de arreglos y rangos
"""

# ╔═╡ f3ba265f-6c29-45d6-a59d-186ebc9364f5
rangoA = 0:10

# ╔═╡ 74b4c24f-cdb6-4280-bcae-99aa7d47f687
typeof(rangoA)

# ╔═╡ b50f23b3-fb8e-47b1-a4ef-d57f3ccf0b05
for ii = 1:5  # ii in 1:5   --> podemos iterar a lo largo de un rango
	println(ii)
end

# ╔═╡ a7d5e0b1-ffa5-4090-b8aa-459898601c7c
crA = collect(rangoA)

# ╔═╡ 7cf056f9-3428-4133-9bd3-bb9e64968592
typeof(crA)

# ╔═╡ e2286f7d-e4b6-4d60-adb5-38559b3c5362
md"""
- En general, el formato de un arreglo es **Array{Tipo, n}**, donde n es el número de dimensiones.
"""

# ╔═╡ 17d376de-294d-459c-aff0-daa8a3158bba
arr = [1.2, 2.2, 3.5]

# ╔═╡ 6bd40a93-a32a-462a-a542-5f8b7206f783
md"""
## En ocasiones es recomendable inicializar arreglos
- Tenemos varias opciones
"""

# ╔═╡ 67321e0b-75a5-447a-aea3-831b017e4db3
arr1 = zeros(10)

# ╔═╡ e537b633-5af0-4616-96fa-0a4f5ebfca98
typeof(arr1)

# ╔═╡ b35eb245-4573-4339-b566-38b038210fb4
arr2 = Array{Float64}(undef, 10)

# ╔═╡ 2e0a0956-6839-4d90-accc-2f1da995c1ad
typeof(arr2)

# ╔═╡ f47e0ea1-f717-4fd5-9d27-97518df01f94
arr3 = Float64[]

# ╔═╡ 999b38f8-9153-4cc7-b40f-20da2756e3a8
typeof(arr3)

# ╔═╡ d9ff6c62-d624-471b-b667-8898fb3b64db
push!(arr3, 1.0)

# ╔═╡ 4ed1dd68-54dc-4815-95f2-5a02e6b011e6
arr4 = []

# ╔═╡ 37d0ec28-6ac2-4590-a889-f3e9f0929c52
typeof(arr4)

# ╔═╡ 668d20e0-b8fa-43fb-a090-4906ffd453cb
md"""
## Las principales características de un arreglo son dadas por las siguientes funciones
- Tipo de los elementos:  **eltype(arr)**
- Número de elementos:  **length(arr)**
- Número de dimensiones:  **ndims(arr)**
- Número de elementos por dimensión:  **size(arr)**
"""

# ╔═╡ 72015a87-8257-471f-acea-8347db434907
arr5 = [1  2  3  4; 
		5  6  7  8;
		9 10 11 12]

# ╔═╡ 19eab98d-579f-4121-883c-9586fdc55bba
typeof(arr5)

# ╔═╡ c4670716-cbda-4f62-8315-05c85f13b1b6
eltype(arr5)

# ╔═╡ 01630722-0e1b-4dcc-bacf-1224256f0884
length(arr5)

# ╔═╡ 670567f9-47a1-47be-ae05-7ff8fadf6207
ndims(arr5)

# ╔═╡ cf9cd92e-4ec6-4c3d-a8f8-39a210aafc68
size(arr5)

# ╔═╡ 73df334a-6c6e-4909-91e3-399adea3ed49
md"""
## Indexado de arreglos
- Usamos **[ ]** para acceder a elementos dentro de un arreglo.
- El operador **:** nos ayuda a generar rangos, los cuales podemos usar para accesar a un conjunto de elementos en un arreglo.
"""

# ╔═╡ 1701bd1c-2899-4942-8adb-ac70678f0571
c1 = rand(10,5) # Esto genera una matriz aleatoria de 10x3 elementos

# ╔═╡ b13b9d1a-8e19-4255-abaf-53f655af4d9e
c1[4,3] # [renglon, columna]

# ╔═╡ c59bb7c5-9bda-4cbe-bc4b-f3b4ec6703e6
c1[3,:] # Que tipo de arreglo es?

# ╔═╡ 840b326b-3f73-4f8c-8450-a6478d6a66c1
c1[:,2] # Que tipo de arreglo es?

# ╔═╡ 8b3df5f3-c89f-4309-b7a4-aa3501cd2f12
c1[3:6,2:5]

# ╔═╡ 2f8a39f4-29ab-4c86-b5b7-63cad207baf3
md"""
## Otras funciones comunes para arreglos
"""

# ╔═╡ a676e88f-9dad-40a7-8ad8-c75716464acc
aa = collect(1:7)

# ╔═╡ 5bbdbaef-960e-4cd0-b255-e195cd5b57d7
bb = [100, 200, 300]

# ╔═╡ 540b8c6a-f753-412b-b898-38699201797e
aa[:]

# ╔═╡ 92ae0f85-d05f-4e23-b19a-1957710d7034
bb[:]

# ╔═╡ 734c9f17-cd93-497d-8724-dc9b016f7a99
[aa; bb]  # Esto concatena ambos vectores

# ╔═╡ 896e0359-2b48-47f8-a12e-c87561c62340
md"""
- Existe otra opción usando **append!()**
"""

# ╔═╡ 34040193-c790-435c-b892-0b1a250317f1
cc = collect(1:7)

# ╔═╡ ec9795c6-b082-43fe-8819-0a0b6af5ae12
dd = [100, 200, 300]

# ╔═╡ 916ef73c-d328-40d3-9b78-3b6b8c8f5891
append!(cc,dd)   # Notemos el uso del símbolo !

# ╔═╡ 2ce02989-7589-4bac-94c9-ca3f6d2493a7
md"""
## Operaciones por elemento -- Operador **.** 
"""

# ╔═╡ eb3adbcd-7306-407a-b214-2cdf0a546d5e
x1 = collect(0.0:pi/4:2pi)

# ╔═╡ cdc0b410-b695-41ab-8486-4c220650e873
x1 + 5.0  # Esta operación no está bien definida

# ╔═╡ e0e5a1a8-5377-4ea8-a73d-1efd574bbf81
x1 .+ 5.0

# ╔═╡ c0053604-3fb0-49e6-9bc3-8d2df8f2a84c
sin(x1)  # Mismo caso para otra funciones matemáticas (más adelante retomaremos esto...)

# ╔═╡ 94eab866-6b22-435a-bd0b-df8951a13e71
sin.(x1)

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
PlutoUI = "7f904dfe-b85e-4ff6-b463-dae2292396a8"

[compat]
PlutoUI = "~0.7.49"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.8.3"
manifest_format = "2.0"
project_hash = "08cc58b1fbde73292d848136b97991797e6c5429"

[[deps.AbstractPlutoDingetjes]]
deps = ["Pkg"]
git-tree-sha1 = "8eaf9f1b4921132a4cff3f36a1d9ba923b14a481"
uuid = "6e696c72-6542-2067-7265-42206c756150"
version = "1.1.4"

[[deps.ArgTools]]
uuid = "0dad84c5-d112-42e6-8d28-ef12dabb789f"
version = "1.1.1"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[deps.Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"

[[deps.ColorTypes]]
deps = ["FixedPointNumbers", "Random"]
git-tree-sha1 = "eb7f0f8307f71fac7c606984ea5fb2817275d6e4"
uuid = "3da002f7-5984-5a60-b8a6-cbb66c0b333f"
version = "0.11.4"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"
version = "0.5.2+0"

[[deps.Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"

[[deps.Downloads]]
deps = ["ArgTools", "FileWatching", "LibCURL", "NetworkOptions"]
uuid = "f43a241f-c20a-4ad4-852c-f6b1247861c6"
version = "1.6.0"

[[deps.FileWatching]]
uuid = "7b1f6079-737a-58dc-b8bc-7a2ca5c1b5ee"

[[deps.FixedPointNumbers]]
deps = ["Statistics"]
git-tree-sha1 = "335bfdceacc84c5cdf16aadc768aa5ddfc5383cc"
uuid = "53c48c17-4a7d-5ca2-90c5-79b7896eea93"
version = "0.8.4"

[[deps.Hyperscript]]
deps = ["Test"]
git-tree-sha1 = "8d511d5b81240fc8e6802386302675bdf47737b9"
uuid = "47d2ed2b-36de-50cf-bf87-49c2cf4b8b91"
version = "0.0.4"

[[deps.HypertextLiteral]]
deps = ["Tricks"]
git-tree-sha1 = "c47c5fa4c5308f27ccaac35504858d8914e102f9"
uuid = "ac1192a8-f4b3-4bfe-ba22-af5b92cd3ab2"
version = "0.9.4"

[[deps.IOCapture]]
deps = ["Logging", "Random"]
git-tree-sha1 = "f7be53659ab06ddc986428d3a9dcc95f6fa6705a"
uuid = "b5f81e59-6552-4d32-b1f0-c071b021bf89"
version = "0.2.2"

[[deps.InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"

[[deps.JSON]]
deps = ["Dates", "Mmap", "Parsers", "Unicode"]
git-tree-sha1 = "3c837543ddb02250ef42f4738347454f95079d4e"
uuid = "682c06a0-de6a-54ab-a142-c8b1cf79cde6"
version = "0.21.3"

[[deps.LibCURL]]
deps = ["LibCURL_jll", "MozillaCACerts_jll"]
uuid = "b27032c2-a3e7-50c8-80cd-2d36dbcbfd21"
version = "0.6.3"

[[deps.LibCURL_jll]]
deps = ["Artifacts", "LibSSH2_jll", "Libdl", "MbedTLS_jll", "Zlib_jll", "nghttp2_jll"]
uuid = "deac9b47-8bc7-5906-a0fe-35ac56dc84c0"
version = "7.84.0+0"

[[deps.LibGit2]]
deps = ["Base64", "NetworkOptions", "Printf", "SHA"]
uuid = "76f85450-5226-5b5a-8eaa-529ad045b433"

[[deps.LibSSH2_jll]]
deps = ["Artifacts", "Libdl", "MbedTLS_jll"]
uuid = "29816b5a-b9ab-546f-933c-edad1886dfa8"
version = "1.10.2+0"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[deps.LinearAlgebra]]
deps = ["Libdl", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[deps.Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"

[[deps.MIMEs]]
git-tree-sha1 = "65f28ad4b594aebe22157d6fac869786a255b7eb"
uuid = "6c6e2e6c-3030-632d-7369-2d6c69616d65"
version = "0.1.4"

[[deps.Markdown]]
deps = ["Base64"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"

[[deps.MbedTLS_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "c8ffd9c3-330d-5841-b78e-0817d7145fa1"
version = "2.28.0+0"

[[deps.Mmap]]
uuid = "a63ad114-7e13-5084-954f-fe012c677804"

[[deps.MozillaCACerts_jll]]
uuid = "14a3606d-f60d-562e-9121-12d972cd8159"
version = "2022.2.1"

[[deps.NetworkOptions]]
uuid = "ca575930-c2e3-43a9-ace4-1e988b2c1908"
version = "1.2.0"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"
version = "0.3.20+0"

[[deps.Parsers]]
deps = ["Dates", "SnoopPrecompile"]
git-tree-sha1 = "6466e524967496866901a78fca3f2e9ea445a559"
uuid = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0"
version = "2.5.2"

[[deps.Pkg]]
deps = ["Artifacts", "Dates", "Downloads", "LibGit2", "Libdl", "Logging", "Markdown", "Printf", "REPL", "Random", "SHA", "Serialization", "TOML", "Tar", "UUIDs", "p7zip_jll"]
uuid = "44cfe95a-1eb2-52ea-b672-e2afdf69b78f"
version = "1.8.0"

[[deps.PlutoUI]]
deps = ["AbstractPlutoDingetjes", "Base64", "ColorTypes", "Dates", "FixedPointNumbers", "Hyperscript", "HypertextLiteral", "IOCapture", "InteractiveUtils", "JSON", "Logging", "MIMEs", "Markdown", "Random", "Reexport", "URIs", "UUIDs"]
git-tree-sha1 = "eadad7b14cf046de6eb41f13c9275e5aa2711ab6"
uuid = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
version = "0.7.49"

[[deps.Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[[deps.REPL]]
deps = ["InteractiveUtils", "Markdown", "Sockets", "Unicode"]
uuid = "3fa0cd96-eef1-5676-8a61-b3b8758bbffb"

[[deps.Random]]
deps = ["SHA", "Serialization"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[deps.Reexport]]
git-tree-sha1 = "45e428421666073eab6f2da5c9d310d99bb12f9b"
uuid = "189a3867-3050-52da-a836-e630ba90ab69"
version = "1.2.2"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"
version = "0.7.0"

[[deps.Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[deps.SnoopPrecompile]]
git-tree-sha1 = "f604441450a3c0569830946e5b33b78c928e1a85"
uuid = "66db9d55-30c0-4569-8b51-7e840670fc0c"
version = "1.0.1"

[[deps.Sockets]]
uuid = "6462fe0b-24de-5631-8697-dd941f90decc"

[[deps.SparseArrays]]
deps = ["LinearAlgebra", "Random"]
uuid = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"

[[deps.Statistics]]
deps = ["LinearAlgebra", "SparseArrays"]
uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"

[[deps.TOML]]
deps = ["Dates"]
uuid = "fa267f1f-6049-4f14-aa54-33bafae1ed76"
version = "1.0.0"

[[deps.Tar]]
deps = ["ArgTools", "SHA"]
uuid = "a4e569a6-e804-4fa4-b0f3-eef7a1d5b13e"
version = "1.10.1"

[[deps.Test]]
deps = ["InteractiveUtils", "Logging", "Random", "Serialization"]
uuid = "8dfed614-e22c-5e08-85e1-65c5234f0b40"

[[deps.Tricks]]
git-tree-sha1 = "6bac775f2d42a611cdfcd1fb217ee719630c4175"
uuid = "410a4b4d-49e4-4fbc-ab6d-cb71b17b3775"
version = "0.1.6"

[[deps.URIs]]
git-tree-sha1 = "ac00576f90d8a259f2c9d823e91d1de3fd44d348"
uuid = "5c2747f8-b7ea-4ff2-ba2e-563bfd36b1d4"
version = "1.4.1"

[[deps.UUIDs]]
deps = ["Random", "SHA"]
uuid = "cf7118a7-6976-5b1a-9a39-7adc72f591a4"

[[deps.Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"

[[deps.Zlib_jll]]
deps = ["Libdl"]
uuid = "83775a58-1f1d-513f-b197-d71354ab007a"
version = "1.2.12+3"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl", "OpenBLAS_jll"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"
version = "5.1.1+0"

[[deps.nghttp2_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850ede-7688-5339-a07c-302acd2aaf8d"
version = "1.48.0+0"

[[deps.p7zip_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "3f19e933-33d8-53b3-aaab-bd5110c3b7a0"
version = "17.4.0+0"
"""

# ╔═╡ Cell order:
# ╟─719ec702-0f6b-4f42-b53d-07604a338c9d
# ╟─ac1d6a24-01fc-4e18-8f46-8e49f240d96d
# ╠═e756fe01-6028-4336-b147-e0537989bab9
# ╟─722ac6c0-6730-4a61-8e0e-3c06eb3d4f45
# ╟─56853c2d-37c9-4470-80ec-4af67e2e6521
# ╟─5545e7a7-7f77-4333-811c-ffc273d18930
# ╠═d2b293fa-21ab-4e81-b614-09476a2c9b35
# ╠═91b39963-86ff-4a57-9c7e-e6b8ada53154
# ╠═2ee9d938-2249-4563-860a-752d3599e01e
# ╠═9a373fdc-0302-4597-9656-3393e004fc9e
# ╠═d9299fa1-6cb0-4567-9a0e-0caa860e5fe7
# ╠═a783ad85-7f97-4a14-959e-478ea23f5993
# ╠═91e7a326-594e-4ca9-abd7-9a7b47b96885
# ╠═91c8f652-c971-40cd-84a2-a15ab732f573
# ╟─e67641ac-3ffa-4d5c-b624-f4a2e61d9e3c
# ╠═4c86098d-1599-49b5-b5a3-10c5c7999b08
# ╠═3bd2f608-cd46-414d-bb24-80c69258a80b
# ╟─6f44af70-fe78-4807-9430-86e4e2edb2da
# ╠═3394a9bd-51d6-491d-b6ef-724758b60cca
# ╟─f1d01fce-34e5-448e-bc63-fe1ac07ff958
# ╠═6c09306b-b10e-4bb5-93c6-24944cfddced
# ╟─8285477d-0d59-461d-9ae0-41d53ac43433
# ╠═6d492b21-b4a0-409d-b23c-0eacb234efb2
# ╟─0563cc01-7802-41fd-b8c5-f7229ee04942
# ╠═4ce97d5c-9741-4e8a-a656-58b362697779
# ╟─88384487-585a-4d3c-a1cb-585fa3a12f0f
# ╠═7c4bdbf9-3255-4763-826c-f133bb729af5
# ╟─49427684-fdb1-4a86-897c-8f92cec3f122
# ╟─e4d03e7d-a093-4e39-b461-605e235abc4c
# ╟─37e9f0c9-3661-4576-b67a-e5fb8a9a80db
# ╠═5fbb64b3-5506-4723-9c33-c5ef06db53e1
# ╠═515d8b0f-e68d-4980-8fb0-38cd02a534c9
# ╟─2d45dda0-7299-4cfd-bddf-e0a663642afe
# ╠═a9e44349-b5bd-455b-b03f-5e5f50480620
# ╠═e3367c5c-7cdc-4845-a2c6-26e4d56346d2
# ╠═d81836f4-4b86-4bdf-ad38-09c50619f799
# ╟─04cd88b0-f09d-4711-b227-bfd8f5822850
# ╟─354928cd-a667-44b7-90fb-c76d1944285f
# ╠═989007da-e6a5-4498-bdb2-a27e277482e4
# ╠═9abdcda6-a6ac-4318-bd42-f72d743c89ee
# ╠═30fc2279-17ed-4667-8778-c8c6480aa2df
# ╠═dfe878ea-f38a-4d5e-8769-7c183a707dea
# ╟─e5451f12-21fd-40ab-9f53-93be8214f18f
# ╠═9635df63-96cb-427d-bbc4-4f56d4624a54
# ╠═9d7676fe-b006-49ab-bb3b-f0be1268e96c
# ╠═d1c76725-0d3d-4eed-9167-5c32cf7e7d8d
# ╠═5ba7c90f-d148-415d-a755-6ceaa9a59f09
# ╟─8fcdd739-4f69-4731-8b9b-e8b8e09138d6
# ╠═01a9be0f-4def-4e94-ac48-e5a6d39d643f
# ╟─fb21f6d1-0ab0-4d39-bc7f-3a7af8303c57
# ╠═7a8ee7ae-d333-4aca-a286-4d838595b74c
# ╠═3428318e-995f-4e9a-8a8a-ec0d41fe1b0c
# ╟─b412ecd5-a2e5-4148-a632-bf71bad5e0bf
# ╠═f3ba265f-6c29-45d6-a59d-186ebc9364f5
# ╠═74b4c24f-cdb6-4280-bcae-99aa7d47f687
# ╠═b50f23b3-fb8e-47b1-a4ef-d57f3ccf0b05
# ╠═a7d5e0b1-ffa5-4090-b8aa-459898601c7c
# ╠═7cf056f9-3428-4133-9bd3-bb9e64968592
# ╟─e2286f7d-e4b6-4d60-adb5-38559b3c5362
# ╠═17d376de-294d-459c-aff0-daa8a3158bba
# ╟─6bd40a93-a32a-462a-a542-5f8b7206f783
# ╠═67321e0b-75a5-447a-aea3-831b017e4db3
# ╠═e537b633-5af0-4616-96fa-0a4f5ebfca98
# ╠═b35eb245-4573-4339-b566-38b038210fb4
# ╠═2e0a0956-6839-4d90-accc-2f1da995c1ad
# ╠═f47e0ea1-f717-4fd5-9d27-97518df01f94
# ╠═999b38f8-9153-4cc7-b40f-20da2756e3a8
# ╠═d9ff6c62-d624-471b-b667-8898fb3b64db
# ╠═4ed1dd68-54dc-4815-95f2-5a02e6b011e6
# ╠═37d0ec28-6ac2-4590-a889-f3e9f0929c52
# ╟─668d20e0-b8fa-43fb-a090-4906ffd453cb
# ╠═72015a87-8257-471f-acea-8347db434907
# ╠═19eab98d-579f-4121-883c-9586fdc55bba
# ╠═c4670716-cbda-4f62-8315-05c85f13b1b6
# ╠═01630722-0e1b-4dcc-bacf-1224256f0884
# ╠═670567f9-47a1-47be-ae05-7ff8fadf6207
# ╠═cf9cd92e-4ec6-4c3d-a8f8-39a210aafc68
# ╟─73df334a-6c6e-4909-91e3-399adea3ed49
# ╠═1701bd1c-2899-4942-8adb-ac70678f0571
# ╠═b13b9d1a-8e19-4255-abaf-53f655af4d9e
# ╠═c59bb7c5-9bda-4cbe-bc4b-f3b4ec6703e6
# ╠═840b326b-3f73-4f8c-8450-a6478d6a66c1
# ╠═8b3df5f3-c89f-4309-b7a4-aa3501cd2f12
# ╟─2f8a39f4-29ab-4c86-b5b7-63cad207baf3
# ╠═a676e88f-9dad-40a7-8ad8-c75716464acc
# ╠═5bbdbaef-960e-4cd0-b255-e195cd5b57d7
# ╠═540b8c6a-f753-412b-b898-38699201797e
# ╠═92ae0f85-d05f-4e23-b19a-1957710d7034
# ╠═734c9f17-cd93-497d-8724-dc9b016f7a99
# ╟─896e0359-2b48-47f8-a12e-c87561c62340
# ╠═34040193-c790-435c-b892-0b1a250317f1
# ╠═ec9795c6-b082-43fe-8819-0a0b6af5ae12
# ╠═916ef73c-d328-40d3-9b78-3b6b8c8f5891
# ╟─2ce02989-7589-4bac-94c9-ca3f6d2493a7
# ╠═eb3adbcd-7306-407a-b214-2cdf0a546d5e
# ╠═cdc0b410-b695-41ab-8486-4c220650e873
# ╠═e0e5a1a8-5377-4ea8-a73d-1efd574bbf81
# ╠═c0053604-3fb0-49e6-9bc3-8d2df8f2a84c
# ╠═94eab866-6b22-435a-bd0b-df8951a13e71
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
