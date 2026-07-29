import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyVascularDevelopmentCanonicalLaneLean

structure ArteriovenousSpecificationPackage where
  ephrinB2EphB4Signaling : Prop
  notchPathwayArterial : Prop
  venousIdentityMaintenance : Prop
  shhVegfCoordination : Prop
  bloodFlowInducedDifferentiation : Prop

structure ArteriovenousSpecificationEvidence (A : ArteriovenousSpecificationPackage) where
  ephrinB2EphB4SignalingClosed : A.ephrinB2EphB4Signaling
  notchPathwayArterialClosed : A.notchPathwayArterial
  venousIdentityMaintenanceClosed : A.venousIdentityMaintenance
  shhVegfCoordinationClosed : A.shhVegfCoordination
  bloodFlowInducedDifferentiationClosed : A.bloodFlowInducedDifferentiation

def ArteriovenousSpecificationClosed (A : ArteriovenousSpecificationPackage) : Prop :=
  A.ephrinB2EphB4Signaling ∧ A.notchPathwayArterial ∧
  A.venousIdentityMaintenance ∧ A.shhVegfCoordination ∧
  A.bloodFlowInducedDifferentiation

theorem arteriovenous_specification_closed_from_evidence
    (A : ArteriovenousSpecificationPackage)
    (E : ArteriovenousSpecificationEvidence A) : ArteriovenousSpecificationClosed A := by
  exact And.intro E.ephrinB2EphB4SignalingClosed
    (And.intro E.notchPathwayArterialClosed
      (And.intro E.venousIdentityMaintenanceClosed
        (And.intro E.shhVegfCoordinationClosed
          E.bloodFlowInducedDifferentiationClosed)))

end DevelopmentalBiologyVascularDevelopmentCanonicalLaneLean
end HautevilleHouse
