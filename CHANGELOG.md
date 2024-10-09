## CHANGELOG

### 1.15.1

- Optimize index size by substituting common words

### 1.15.0

- Include Emoji sequences which are not fully qualified (VS16 is missing) in index
- You can use the newly introduced method `Unicode::SequenceName.fully_qualified` 
  if you want to exclude non-fully qualified sequences

### 1.14.1

- Fix bug that some singleton Emoji would be included in index

### 1.14.0

- Unicode 16.0
- Emoji 16.0

### 1.13.0

- Unicode 15.1
- Emoji 15.1

### 1.12.0

* IVD 2022-09-13

### 1.11.0

- Unicode 15.0
- Emoji 15.0

### 1.10.0

- Unicode 14.0
- Emoji 14.0

### 1.9.0

* IVD 2020-11-06

### 1.8.0

* Emoji 13.1

### 1.7.0

- Unicode 13

### 1.6.0

* Emoji 13.0

### 1.5.0

* Emoji 12.1

### 1.4.0

* Unicode 12.1

### 1.3.0

* Unicode 12 / Emoji 12

### 1.2.0

* Unicode 11 / Emoji 11
* Do not depend on rubygems (only use zlib stdlib for unzipping)

### 1.1.2

* Explicitly load rubygems/util, fixes regression in 1.1.1

### 1.1.1

* Use `Gem::Util` for `gunzip`, removes deprecation warning

### 1.1.0

* Unicode 10

### 1.0.1

* Make sure all emoji variation sequences are included

### 1.0.0

* Initial release (Unicode 9.0, Emoji 5.0)

