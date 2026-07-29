import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DegreeWindingNumberCanonicalLaneLean.WindingNumberClass

namespace HautevilleHouse
namespace DegreeWindingNumberCanonicalLaneLean

structure BorsukUlamPackage (W : WindingNumberPackage) where
  spheres : Type u
  antipodalMap : Type v
  oddMapDegree : Prop
  noEquivariantRetraction : Prop

structure BorsukUlamEvidence {W : WindingNumberPackage}
    (B : BorsukUlamPackage W) where
  oddMapDegreeClosed : B.oddMapDegree
  noEquivariantRetractionClosed : B.noEquivariantRetraction

def BorsukUlamClosed {W : WindingNumberPackage}
    (B : BorsukUlamPackage W) : Prop :=
  B.oddMapDegree ∧ B.noEquivariantRetraction

theorem borsuk_ulam_closed_from_evidence {W : WindingNumberPackage}
    (B : BorsukUlamPackage W) (E : BorsukUlamEvidence B) :
    BorsukUlamClosed B := by
  exact And.intro E.oddMapDegreeClosed E.noEquivariantRetractionClosed

end DegreeWindingNumberCanonicalLaneLean
end HautevilleHouse
