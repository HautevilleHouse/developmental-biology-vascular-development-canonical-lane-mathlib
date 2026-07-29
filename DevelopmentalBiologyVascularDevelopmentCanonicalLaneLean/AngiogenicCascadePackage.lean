import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyVascularDevelopmentCanonicalLaneLean

structure AngiogenicCascadePackage where
  vegfSignaling : Prop
  tipCellSelection : Prop
  stalkCellProliferation : Prop
  vesselLumenFormation : Prop
  basementMembraneRemodeling : Prop

structure AngiogenicCascadeEvidence (A : AngiogenicCascadePackage) where
  vegfSignalingClosed : A.vegfSignaling
  tipCellSelectionClosed : A.tipCellSelection
  stalkCellProliferationClosed : A.stalkCellProliferation
  vesselLumenFormationClosed : A.vesselLumenFormation
  basementMembraneRemodelingClosed : A.basementMembraneRemodeling

def AngiogenicCascadeClosed (A : AngiogenicCascadePackage) : Prop :=
  A.vegfSignaling ∧ A.tipCellSelection ∧ A.stalkCellProliferation ∧
  A.vesselLumenFormation ∧ A.basementMembraneRemodeling

theorem angiogenic_cascade_closed_from_evidence (A : AngiogenicCascadePackage)
    (E : AngiogenicCascadeEvidence A) : AngiogenicCascadeClosed A := by
  exact And.intro E.vegfSignalingClosed
    (And.intro E.tipCellSelectionClosed
      (And.intro E.stalkCellProliferationClosed
        (And.intro E.vesselLumenFormationClosed
          E.basementMembraneRemodelingClosed)))

end DevelopmentalBiologyVascularDevelopmentCanonicalLaneLean
end HautevilleHouse
