import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyVascularDevelopmentCanonicalLaneLean

structure VascularPruningMaturationPackage where
  hemodynamicFlowSensing : Prop
  pericyteRecruitment : Prop
  junctionalRemodeling : Prop
  regressionOfExcessVessels : Prop
  basementMembraneDeposition : Prop

structure VascularPruningMaturationEvidence (P : VascularPruningMaturationPackage) where
  hemodynamicFlowSensingClosed : P.hemodynamicFlowSensing
  pericyteRecruitmentClosed : P.pericyteRecruitment
  junctionalRemodelingClosed : P.junctionalRemodeling
  regressionOfExcessVesselsClosed : P.regressionOfExcessVessels
  basementMembraneDepositionClosed : P.basementMembraneDeposition

def VascularPruningMaturationClosed (P : VascularPruningMaturationPackage) : Prop :=
  P.hemodynamicFlowSensing ∧ P.pericyteRecruitment ∧ P.junctionalRemodeling ∧
  P.regressionOfExcessVessels ∧ P.basementMembraneDeposition

theorem vascular_pruning_maturation_closed_from_evidence
    (P : VascularPruningMaturationPackage)
    (E : VascularPruningMaturationEvidence P) : VascularPruningMaturationClosed P := by
  exact And.intro E.hemodynamicFlowSensingClosed
    (And.intro E.pericyteRecruitmentClosed
      (And.intro E.junctionalRemodelingClosed
        (And.intro E.regressionOfExcessVesselsClosed
          E.basementMembraneDepositionClosed)))

end DevelopmentalBiologyVascularDevelopmentCanonicalLaneLean
end HautevilleHouse
