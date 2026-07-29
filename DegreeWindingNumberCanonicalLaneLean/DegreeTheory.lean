import DegreeWindingNumberCanonicalLaneLean.FundamentalTheoremAlgebra

namespace HautevilleHouse
namespace DegreeWindingNumberCanonicalLaneLean

structure DegreeTheoryPackage {C : WindingNumberCorePackage} where
  continuousMap : Type u
  degreeDefinition : Prop
  additivity : Prop
  homotopyInvariance : Prop
  computationFormula : Prop

structure DegreeTheoryEvidence {C : WindingNumberCorePackage} (D : DegreeTheoryPackage C) where
  degreeDefinitionClosed : D.degreeDefinition
  additivityClosed : D.additivity
  homotopyInvarianceClosed : D.homotopyInvariance
  computationFormulaClosed : D.computationFormula

def DegreeTheoryClosed {C : WindingNumberCorePackage} (D : DegreeTheoryPackage C) : Prop :=
  D.degreeDefinition ∧ D.additivity ∧ D.homotopyInvariance ∧ D.computationFormula

theorem degree_theory_closed_from_evidence {C : WindingNumberCorePackage} (D : DegreeTheoryPackage C) (E : DegreeTheoryEvidence D) :
    DegreeTheoryClosed D := by
  exact And.intro E.degreeDefinitionClosed
    (And.intro E.additivityClosed
      (And.intro E.homotopyInvarianceClosed E.computationFormulaClosed))

end DegreeWindingNumberCanonicalLaneLean
end HautevilleHouse