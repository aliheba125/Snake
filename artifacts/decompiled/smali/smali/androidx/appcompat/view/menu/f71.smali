.class public abstract Landroidx/appcompat/view/menu/f71;
.super Landroidx/appcompat/view/menu/fz;
.source "SourceFile"


# instance fields
.field public A0:I

.field public B0:I

.field public C0:I

.field public D0:I

.field public E0:I

.field public F0:I

.field public G0:Z

.field public H0:I

.field public I0:I

.field public J0:Landroidx/appcompat/view/menu/e8$a;

.field public K0:Landroidx/appcompat/view/menu/e8$b;

.field public y0:I

.field public z0:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/view/menu/fz;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/view/menu/f71;->y0:I

    iput v0, p0, Landroidx/appcompat/view/menu/f71;->z0:I

    iput v0, p0, Landroidx/appcompat/view/menu/f71;->A0:I

    iput v0, p0, Landroidx/appcompat/view/menu/f71;->B0:I

    iput v0, p0, Landroidx/appcompat/view/menu/f71;->C0:I

    iput v0, p0, Landroidx/appcompat/view/menu/f71;->D0:I

    iput v0, p0, Landroidx/appcompat/view/menu/f71;->E0:I

    iput v0, p0, Landroidx/appcompat/view/menu/f71;->F0:I

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/f71;->G0:Z

    iput v0, p0, Landroidx/appcompat/view/menu/f71;->H0:I

    iput v0, p0, Landroidx/appcompat/view/menu/f71;->I0:I

    new-instance v0, Landroidx/appcompat/view/menu/e8$a;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/e8$a;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/f71;->J0:Landroidx/appcompat/view/menu/e8$a;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/view/menu/f71;->K0:Landroidx/appcompat/view/menu/e8$b;

    return-void
.end method


# virtual methods
.method public K0(Z)V
    .locals 2

    iget v0, p0, Landroidx/appcompat/view/menu/f71;->C0:I

    if-gtz v0, :cond_0

    iget v1, p0, Landroidx/appcompat/view/menu/f71;->D0:I

    if-lez v1, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    iget p1, p0, Landroidx/appcompat/view/menu/f71;->D0:I

    iput p1, p0, Landroidx/appcompat/view/menu/f71;->E0:I

    iput v0, p0, Landroidx/appcompat/view/menu/f71;->F0:I

    goto :goto_0

    :cond_1
    iput v0, p0, Landroidx/appcompat/view/menu/f71;->E0:I

    iget p1, p0, Landroidx/appcompat/view/menu/f71;->D0:I

    iput p1, p0, Landroidx/appcompat/view/menu/f71;->F0:I

    :cond_2
    :goto_0
    return-void
.end method

.method public L0()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/appcompat/view/menu/fz;->x0:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/appcompat/view/menu/fz;->w0:[Landroidx/appcompat/view/menu/mf;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/mf;->q0(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public M0()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/f71;->I0:I

    return v0
.end method

.method public N0()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/f71;->H0:I

    return v0
.end method

.method public O0()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/f71;->z0:I

    return v0
.end method

.method public P0()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/f71;->E0:I

    return v0
.end method

.method public Q0()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/f71;->F0:I

    return v0
.end method

.method public R0()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/f71;->y0:I

    return v0
.end method

.method public abstract S0(IIII)V
.end method

.method public T0(Landroidx/appcompat/view/menu/mf;Landroidx/appcompat/view/menu/mf$b;ILandroidx/appcompat/view/menu/mf$b;I)V
    .locals 1

    :goto_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/f71;->K0:Landroidx/appcompat/view/menu/e8$b;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/mf;->G()Landroidx/appcompat/view/menu/mf;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/mf;->G()Landroidx/appcompat/view/menu/mf;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/nf;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/nf;->U0()Landroidx/appcompat/view/menu/e8$b;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/f71;->K0:Landroidx/appcompat/view/menu/e8$b;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/f71;->J0:Landroidx/appcompat/view/menu/e8$a;

    iput-object p2, v0, Landroidx/appcompat/view/menu/e8$a;->a:Landroidx/appcompat/view/menu/mf$b;

    iput-object p4, v0, Landroidx/appcompat/view/menu/e8$a;->b:Landroidx/appcompat/view/menu/mf$b;

    iput p3, v0, Landroidx/appcompat/view/menu/e8$a;->c:I

    iput p5, v0, Landroidx/appcompat/view/menu/e8$a;->d:I

    iget-object p2, p0, Landroidx/appcompat/view/menu/f71;->K0:Landroidx/appcompat/view/menu/e8$b;

    invoke-interface {p2, p1, v0}, Landroidx/appcompat/view/menu/e8$b;->b(Landroidx/appcompat/view/menu/mf;Landroidx/appcompat/view/menu/e8$a;)V

    iget-object p2, p0, Landroidx/appcompat/view/menu/f71;->J0:Landroidx/appcompat/view/menu/e8$a;

    iget p2, p2, Landroidx/appcompat/view/menu/e8$a;->e:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/mf;->E0(I)V

    iget-object p2, p0, Landroidx/appcompat/view/menu/f71;->J0:Landroidx/appcompat/view/menu/e8$a;

    iget p2, p2, Landroidx/appcompat/view/menu/e8$a;->f:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/mf;->h0(I)V

    iget-object p2, p0, Landroidx/appcompat/view/menu/f71;->J0:Landroidx/appcompat/view/menu/e8$a;

    iget-boolean p2, p2, Landroidx/appcompat/view/menu/e8$a;->h:Z

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/mf;->g0(Z)V

    iget-object p2, p0, Landroidx/appcompat/view/menu/f71;->J0:Landroidx/appcompat/view/menu/e8$a;

    iget p2, p2, Landroidx/appcompat/view/menu/e8$a;->g:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/mf;->b0(I)V

    return-void
.end method

.method public U0()Z
    .locals 9

    iget-object v0, p0, Landroidx/appcompat/view/menu/mf;->N:Landroidx/appcompat/view/menu/mf;

    if-eqz v0, :cond_0

    check-cast v0, Landroidx/appcompat/view/menu/nf;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/nf;->U0()Landroidx/appcompat/view/menu/e8$b;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    move v2, v1

    :goto_1
    iget v3, p0, Landroidx/appcompat/view/menu/fz;->x0:I

    const/4 v4, 0x1

    if-ge v2, v3, :cond_7

    iget-object v3, p0, Landroidx/appcompat/view/menu/fz;->w0:[Landroidx/appcompat/view/menu/mf;

    aget-object v3, v3, v2

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    instance-of v5, v3, Landroidx/appcompat/view/menu/jy;

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v3, v1}, Landroidx/appcompat/view/menu/mf;->s(I)Landroidx/appcompat/view/menu/mf$b;

    move-result-object v5

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/mf;->s(I)Landroidx/appcompat/view/menu/mf$b;

    move-result-object v6

    sget-object v7, Landroidx/appcompat/view/menu/mf$b;->o:Landroidx/appcompat/view/menu/mf$b;

    if-ne v5, v7, :cond_4

    iget v8, v3, Landroidx/appcompat/view/menu/mf;->l:I

    if-eq v8, v4, :cond_4

    if-ne v6, v7, :cond_4

    iget v8, v3, Landroidx/appcompat/view/menu/mf;->m:I

    if-eq v8, v4, :cond_4

    goto :goto_2

    :cond_4
    if-ne v5, v7, :cond_5

    sget-object v5, Landroidx/appcompat/view/menu/mf$b;->n:Landroidx/appcompat/view/menu/mf$b;

    :cond_5
    if-ne v6, v7, :cond_6

    sget-object v6, Landroidx/appcompat/view/menu/mf$b;->n:Landroidx/appcompat/view/menu/mf$b;

    :cond_6
    iget-object v4, p0, Landroidx/appcompat/view/menu/f71;->J0:Landroidx/appcompat/view/menu/e8$a;

    iput-object v5, v4, Landroidx/appcompat/view/menu/e8$a;->a:Landroidx/appcompat/view/menu/mf$b;

    iput-object v6, v4, Landroidx/appcompat/view/menu/e8$a;->b:Landroidx/appcompat/view/menu/mf$b;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/mf;->P()I

    move-result v5

    iput v5, v4, Landroidx/appcompat/view/menu/e8$a;->c:I

    iget-object v4, p0, Landroidx/appcompat/view/menu/f71;->J0:Landroidx/appcompat/view/menu/e8$a;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/mf;->v()I

    move-result v5

    iput v5, v4, Landroidx/appcompat/view/menu/e8$a;->d:I

    iget-object v4, p0, Landroidx/appcompat/view/menu/f71;->J0:Landroidx/appcompat/view/menu/e8$a;

    invoke-interface {v0, v3, v4}, Landroidx/appcompat/view/menu/e8$b;->b(Landroidx/appcompat/view/menu/mf;Landroidx/appcompat/view/menu/e8$a;)V

    iget-object v4, p0, Landroidx/appcompat/view/menu/f71;->J0:Landroidx/appcompat/view/menu/e8$a;

    iget v4, v4, Landroidx/appcompat/view/menu/e8$a;->e:I

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/mf;->E0(I)V

    iget-object v4, p0, Landroidx/appcompat/view/menu/f71;->J0:Landroidx/appcompat/view/menu/e8$a;

    iget v4, v4, Landroidx/appcompat/view/menu/e8$a;->f:I

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/mf;->h0(I)V

    iget-object v4, p0, Landroidx/appcompat/view/menu/f71;->J0:Landroidx/appcompat/view/menu/e8$a;

    iget v4, v4, Landroidx/appcompat/view/menu/e8$a;->g:I

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/mf;->b0(I)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    return v4
.end method

.method public V0()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/f71;->G0:Z

    return v0
.end method

.method public W0(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/f71;->G0:Z

    return-void
.end method

.method public X0(II)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/view/menu/f71;->H0:I

    iput p2, p0, Landroidx/appcompat/view/menu/f71;->I0:I

    return-void
.end method

.method public Y0(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/view/menu/f71;->A0:I

    iput p1, p0, Landroidx/appcompat/view/menu/f71;->y0:I

    iput p1, p0, Landroidx/appcompat/view/menu/f71;->B0:I

    iput p1, p0, Landroidx/appcompat/view/menu/f71;->z0:I

    iput p1, p0, Landroidx/appcompat/view/menu/f71;->C0:I

    iput p1, p0, Landroidx/appcompat/view/menu/f71;->D0:I

    return-void
.end method

.method public Z0(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/view/menu/f71;->z0:I

    return-void
.end method

.method public a1(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/view/menu/f71;->D0:I

    return-void
.end method

.method public b1(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/view/menu/f71;->A0:I

    iput p1, p0, Landroidx/appcompat/view/menu/f71;->E0:I

    return-void
.end method

.method public c(Landroidx/appcompat/view/menu/nf;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/f71;->L0()V

    return-void
.end method

.method public c1(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/view/menu/f71;->B0:I

    iput p1, p0, Landroidx/appcompat/view/menu/f71;->F0:I

    return-void
.end method

.method public d1(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/view/menu/f71;->C0:I

    iput p1, p0, Landroidx/appcompat/view/menu/f71;->E0:I

    iput p1, p0, Landroidx/appcompat/view/menu/f71;->F0:I

    return-void
.end method

.method public e1(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/view/menu/f71;->y0:I

    return-void
.end method
