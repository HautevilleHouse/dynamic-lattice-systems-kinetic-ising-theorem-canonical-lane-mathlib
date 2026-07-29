import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicLatticeSystemsKineticIsingTheoremCanonicalLaneLean

structure GibbsMeasure (Ω : Type) where
  hamiltonian : SpinConfiguration Ω → ℝ
  partitionFunction : ℝ
  measure : SpinConfiguration Ω → ℝ
  normalization : sum over configurations of measure = 1

structure CanonicalEnsemble (Ω : Type) extends GibbsMeasure Ω where
  temperature : ℝ
  boltzmannWeight : SpinConfiguration Ω → ℝ

structure GrandCanonicalEnsemble (Ω : Type) extends GibbsMeasure Ω where
  chemicalPotential : ℝ
  fugacity : ℝ

theorem gibbs_measure_satisfies_detailed_balance (Ω : Type) (G : GibbsMeasure Ω) (K : KineticIsingProcess Ω) : Prop :=
  ∀ σ τ : SpinConfiguration Ω, G.measure σ * K.transitionRate σ τ = G.measure τ * K.transitionRate τ σ

end DynamicLatticeSystemsKineticIsingTheoremCanonicalLaneLean
end HautevilleHouse