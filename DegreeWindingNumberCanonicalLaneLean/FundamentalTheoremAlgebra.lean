import DegreeWindingNumberCanonicalLaneLean.RoucheTheorem

namespace HautevilleHouse
namespace DegreeWindingNumberCanonicalLaneLean

structure FundamentalTheoremAlgebraPackage {C : WindingNumberCorePackage} where
  polynomial : Type u
  nonconstant : Prop
  rootExistence : Prop
  windingArgument : Prop
  conclusion : Prop

structure FundamentalTheoremAlgebraEvidence {C : WindingNumberCorePackage} (F : FundamentalTheoremAlgebraPackage C) where
  nonconstantClosed : F.nonconstant
  rootExistenceClosed : F.rootExistence
  windingArgumentClosed : F.windingArgument
  conclusionClosed : F.conclusion

def FundamentalTheoremAlgebraClosed {C : WindingNumberCorePackage} (F : FundamentalTheoremAlgebraPackage C) : Prop :=
  F.nonconstant ∧ F.rootExistence ∧ F.windingArgument ∧ F.conclusion

theorem fundamental_theorem_algebra_closed_from_evidence {C : WindingNumberCorePackage} (F : FundamentalTheoremAlgebraPackage C) (E : FundamentalTheoremAlgebraEvidence F) :
    FundamentalTheoremAlgebraClosed F := by
  exact And.intro E.nonconstantClosed
    (And.intro E.rootExistenceClosed
      (And.intro E.windingArgumentClosed E.conclusionClosed))

end DegreeWindingNumberCanonicalLaneLean
end HautevilleHouse