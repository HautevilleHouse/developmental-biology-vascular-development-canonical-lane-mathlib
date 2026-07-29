import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyVascularDevelopmentCanonicalLaneLean

structure LymphaticVascularSpecificationPackage where
  prox1VegfcSignaling : Prop
  lymphaticEndothelialDifferentiation : Prop
  lymphaticValveFormation : Prop
  lymphangiogenesis : Prop
  lymphaticVascularSeparation : Prop

structure LymphaticVascularSpecificationEvidence (L : LymphaticVascularSpecificationPackage) where
  prox1VegfcSignalingClosed : L.prox1VegfcSignaling
  lymphaticEndothelialDifferentiationClosed : L.lymphaticEndothelialDifferentiation
  lymphaticValveFormationClosed : L.lymphaticValveFormation
  lymphangiogenesisClosed : L.lymphangiogenesis
  lymphaticVascularSeparationClosed : L.lymphaticVascularSeparation

def LymphaticVascularSpecificationClosed (L : LymphaticVascularSpecificationPackage) : Prop :=
  L.prox1VegfcSignaling ∧ L.lymphaticEndothelialDifferentiation ∧
  L.lymphaticValveFormation ∧ L.lymphangiogenesis ∧ L.lymphaticVascularSeparation

theorem lymphatic_vascular_specification_closed_from_evidence
    (L : LymphaticVascularSpecificationPackage)
    (E : LymphaticVascularSpecificationEvidence L) : LymphaticVascularSpecificationClosed L := by
  exact And.intro E.prox1VegfcSignalingClosed
    (And.intro E.lymphaticEndothelialDifferentiationClosed
      (And.intro E.lymphaticValveFormationClosed
        (And.intro E.lymphangiogenesisClosed E.lymphaticVascularSeparationClosed)))

end DevelopmentalBiologyVascularDevelopmentCanonicalLaneLean
end HautevilleHouse
