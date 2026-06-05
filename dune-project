(lang dune 3.23)

(generate_opam_files true)

(package
 (name test_select)
 (allow_empty)
 (depends opam-core ppxlib dune-build-info))
