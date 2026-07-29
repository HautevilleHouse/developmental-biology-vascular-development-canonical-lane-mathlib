import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyVascularDevelopmentCanonicalLaneLean

structure EndothelialTipCellDynamicsPackage where
  notchDll4Signaling : Prop
  vegfGradientSensing : Prop
  filopodiaExtension : Prop
  tipCellMigration : Prop
  lateralInhibition : Prop

structure EndothelialTipCellDynamicsEvidence (T : EndothelialTipCellDynamicsPackage) where
  notchDll4SignalingClosed : T.notchDll4Signaling
  vegfGradientSensingClosed : T.vegfGradientSensing
  filopodiaExtensionClosed : T.filopodiaExtension
  tipCellMigrationClosed : T.tipCellMigration
  lateralInhibitionClosed : T.lateralInhibition

def EndothelialTipCellDynamicsClosed (T : EndothelialTipCellDynamicsPackage) : Prop :=
  T.notchDll4Signaling ∧ T.vegfGradientSensing ∧ T.filopodiaExtension ∧
  T.tipCellMigration ∧ T.lateralInhibition

theorem endothelial_tip_cell_dynamics_closed_from_evidence
    (T : EndothelialTipCellDynamicsPackage)
    (E : EndothelialTipCellDynamicsEvidence T) : EndothelialTipCellDynamicsClosed T := by
  exact And.intro E.notchDll4SignalingClosed
    (And.intro E.vegfGradientSensingClosed
      (And.intro E.filopodiaExtensionClosed
        (And.intro E.tipCellMigrationClosed E.lateralInhibitionClosed)))

end DevelopmentalBiologyVascularDevelopmentCanonicalLaneLean
end HautevilleHouse
