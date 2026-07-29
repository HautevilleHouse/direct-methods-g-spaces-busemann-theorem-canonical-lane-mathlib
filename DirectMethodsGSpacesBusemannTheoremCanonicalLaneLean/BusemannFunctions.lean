import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectMethodsGSpacesBusemannTheoremCanonicalLaneLean

structure BusemannFunctionPackage {G : GromovHausdorffSpacePackage} where
  ray : ℕ → G.spaceType
  busemannFunction : G.spaceType → ℝ
  asymptoticallyLinear : Prop
  lipschitz : Prop
  convex : Prop
  asymptoticallyLinearClosed : asymptoticallyLinear
  lipschitzClosed : lipschitz
  convexClosed : convex

structure BusemannFunctionEvidence {G : GromovHausdorffSpacePackage}
    (B : BusemannFunctionPackage G) where
  asymptoticallyLinearClosed : B.asymptoticallyLinear
  lipschitzClosed : B.lipschitz
  convexClosed : B.convex

def BusemannFunctionClosed {G : GromovHausdorffSpacePackage}
    (B : BusemannFunctionPackage G) : Prop :=
  B.asymptoticallyLinear ∧ B.lipschitz ∧ B.convex

theorem busemann_function_closed_from_evidence {G : GromovHausdorffSpacePackage}
    (B : BusemannFunctionPackage G) (E : BusemannFunctionEvidence B) :
    BusemannFunctionClosed B := by
  exact And.intro E.asymptoticallyLinearClosed
    (And.intro E.lipschitzClosed E.convexClosed)

end DirectMethodsGSpacesBusemannTheoremCanonicalLaneLean
end HautevilleHouse