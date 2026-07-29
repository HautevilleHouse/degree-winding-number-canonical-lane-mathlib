import DegreeWindingNumberCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DegreeWindingNumberCanonicalLaneLean

structure WindingNumberCorePackage where
  curve : Type u
  targetPoint : Type v
  loopCondition : Prop
  analyticDefinition : Prop
  homotopyInvariance : Prop
  integerValued : Prop

structure WindingNumberCoreEvidence (C : WindingNumberCorePackage) where
  loopConditionClosed : C.loopCondition
  analyticDefinitionClosed : C.analyticDefinition
  homotopyInvarianceClosed : C.homotopyInvariance
  integerValuedClosed : C.integerValued

def WindingNumberCoreClosed (C : WindingNumberCorePackage) : Prop :=
  C.loopCondition ∧ C.analyticDefinition ∧ C.homotopyInvariance ∧ C.integerValued

theorem winding_number_core_closed_from_evidence (C : WindingNumberCorePackage) (E : WindingNumberCoreEvidence C) :
    WindingNumberCoreClosed C := by
  exact And.intro E.loopConditionClosed
    (And.intro E.analyticDefinitionClosed
      (And.intro E.homotopyInvarianceClosed E.integerValuedClosed))

end DegreeWindingNumberCanonicalLaneLean
end HautevilleHouse