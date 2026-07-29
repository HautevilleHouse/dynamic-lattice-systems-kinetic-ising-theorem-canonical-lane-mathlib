import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicLatticeSystemsKineticIsingTheoremCanonicalLaneLean

structure MasterEquation (Ω : Type) where
  probabilityDensity : SpinConfiguration Ω → ℝ → ℝ
  transitionMatrix : SpinConfiguration Ω → SpinConfiguration Ω → ℝ
  equation : (∂/∂t) p(σ,t) = ∑_τ [T(σ←τ) p(τ,t) - T(τ←σ) p(σ,t)]

structure StationarySolution (Ω : Type) extends MasterEquation Ω where
  timeIndependent : Prop
  detailedBalanceSolution : Prop

theorem stationary_solution_is_gibbs (Ω : Type) (S : StationarySolution Ω) (G : GibbsMeasure Ω) : Prop :=
  ∀ σ : SpinConfiguration Ω, S.probabilityDensity σ 0 = G.measure σ

end DynamicLatticeSystemsKineticIsingTheoremCanonicalLaneLean
end HautevilleHouse