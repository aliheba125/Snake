.class public Landroidx/appcompat/view/menu/ky;
.super Landroidx/appcompat/view/menu/y71;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/mf;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/y71;-><init>(Landroidx/appcompat/view/menu/mf;)V

    iget-object v0, p1, Landroidx/appcompat/view/menu/mf;->e:Landroidx/appcompat/view/menu/jz;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/jz;->f()V

    iget-object v0, p1, Landroidx/appcompat/view/menu/mf;->f:Landroidx/appcompat/view/menu/k51;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/k51;->f()V

    check-cast p1, Landroidx/appcompat/view/menu/jy;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/jy;->K0()I

    move-result p1

    iput p1, p0, Landroidx/appcompat/view/menu/y71;->f:I

    return-void
.end method


# virtual methods
.method public a(Landroidx/appcompat/view/menu/jl;)V
    .locals 1

    iget-object p1, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-boolean v0, p1, Landroidx/appcompat/view/menu/nl;->c:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p1, Landroidx/appcompat/view/menu/nl;->j:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object p1, p1, Landroidx/appcompat/view/menu/nl;->l:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/nl;

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    check-cast v0, Landroidx/appcompat/view/menu/jy;

    iget p1, p1, Landroidx/appcompat/view/menu/nl;->g:I

    int-to-float p1, p1

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/jy;->N0()F

    move-result v0

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/nl;->d(I)V

    return-void
.end method

.method public d()V
    .locals 5

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    check-cast v0, Landroidx/appcompat/view/menu/jy;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/jy;->L0()I

    move-result v1

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/jy;->M0()I

    move-result v2

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/jy;->N0()F

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/jy;->K0()I

    move-result v0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    if-eq v1, v3, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-object v0, v0, Landroidx/appcompat/view/menu/nl;->l:Ljava/util/List;

    iget-object v2, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v2, v2, Landroidx/appcompat/view/menu/mf;->N:Landroidx/appcompat/view/menu/mf;

    iget-object v2, v2, Landroidx/appcompat/view/menu/mf;->e:Landroidx/appcompat/view/menu/jz;

    iget-object v2, v2, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v0, v0, Landroidx/appcompat/view/menu/mf;->N:Landroidx/appcompat/view/menu/mf;

    iget-object v0, v0, Landroidx/appcompat/view/menu/mf;->e:Landroidx/appcompat/view/menu/jz;

    iget-object v0, v0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-object v0, v0, Landroidx/appcompat/view/menu/nl;->k:Ljava/util/List;

    iget-object v2, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iput v1, v0, Landroidx/appcompat/view/menu/nl;->f:I

    goto :goto_0

    :cond_0
    if-eq v2, v3, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-object v0, v0, Landroidx/appcompat/view/menu/nl;->l:Ljava/util/List;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v1, v1, Landroidx/appcompat/view/menu/mf;->N:Landroidx/appcompat/view/menu/mf;

    iget-object v1, v1, Landroidx/appcompat/view/menu/mf;->e:Landroidx/appcompat/view/menu/jz;

    iget-object v1, v1, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v0, v0, Landroidx/appcompat/view/menu/mf;->N:Landroidx/appcompat/view/menu/mf;

    iget-object v0, v0, Landroidx/appcompat/view/menu/mf;->e:Landroidx/appcompat/view/menu/jz;

    iget-object v0, v0, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iget-object v0, v0, Landroidx/appcompat/view/menu/nl;->k:Ljava/util/List;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    neg-int v1, v2

    iput v1, v0, Landroidx/appcompat/view/menu/nl;->f:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iput-boolean v4, v0, Landroidx/appcompat/view/menu/nl;->b:Z

    iget-object v0, v0, Landroidx/appcompat/view/menu/nl;->l:Ljava/util/List;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v1, v1, Landroidx/appcompat/view/menu/mf;->N:Landroidx/appcompat/view/menu/mf;

    iget-object v1, v1, Landroidx/appcompat/view/menu/mf;->e:Landroidx/appcompat/view/menu/jz;

    iget-object v1, v1, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v0, v0, Landroidx/appcompat/view/menu/mf;->N:Landroidx/appcompat/view/menu/mf;

    iget-object v0, v0, Landroidx/appcompat/view/menu/mf;->e:Landroidx/appcompat/view/menu/jz;

    iget-object v0, v0, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iget-object v0, v0, Landroidx/appcompat/view/menu/nl;->k:Ljava/util/List;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v0, v0, Landroidx/appcompat/view/menu/mf;->e:Landroidx/appcompat/view/menu/jz;

    iget-object v0, v0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ky;->q(Landroidx/appcompat/view/menu/nl;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v0, v0, Landroidx/appcompat/view/menu/mf;->e:Landroidx/appcompat/view/menu/jz;

    iget-object v0, v0, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ky;->q(Landroidx/appcompat/view/menu/nl;)V

    goto/16 :goto_2

    :cond_2
    if-eq v1, v3, :cond_3

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-object v0, v0, Landroidx/appcompat/view/menu/nl;->l:Ljava/util/List;

    iget-object v2, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v2, v2, Landroidx/appcompat/view/menu/mf;->N:Landroidx/appcompat/view/menu/mf;

    iget-object v2, v2, Landroidx/appcompat/view/menu/mf;->f:Landroidx/appcompat/view/menu/k51;

    iget-object v2, v2, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v0, v0, Landroidx/appcompat/view/menu/mf;->N:Landroidx/appcompat/view/menu/mf;

    iget-object v0, v0, Landroidx/appcompat/view/menu/mf;->f:Landroidx/appcompat/view/menu/k51;

    iget-object v0, v0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-object v0, v0, Landroidx/appcompat/view/menu/nl;->k:Ljava/util/List;

    iget-object v2, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iput v1, v0, Landroidx/appcompat/view/menu/nl;->f:I

    goto :goto_1

    :cond_3
    if-eq v2, v3, :cond_4

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-object v0, v0, Landroidx/appcompat/view/menu/nl;->l:Ljava/util/List;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v1, v1, Landroidx/appcompat/view/menu/mf;->N:Landroidx/appcompat/view/menu/mf;

    iget-object v1, v1, Landroidx/appcompat/view/menu/mf;->f:Landroidx/appcompat/view/menu/k51;

    iget-object v1, v1, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v0, v0, Landroidx/appcompat/view/menu/mf;->N:Landroidx/appcompat/view/menu/mf;

    iget-object v0, v0, Landroidx/appcompat/view/menu/mf;->f:Landroidx/appcompat/view/menu/k51;

    iget-object v0, v0, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iget-object v0, v0, Landroidx/appcompat/view/menu/nl;->k:Ljava/util/List;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    neg-int v1, v2

    iput v1, v0, Landroidx/appcompat/view/menu/nl;->f:I

    goto :goto_1

    :cond_4
    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iput-boolean v4, v0, Landroidx/appcompat/view/menu/nl;->b:Z

    iget-object v0, v0, Landroidx/appcompat/view/menu/nl;->l:Ljava/util/List;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v1, v1, Landroidx/appcompat/view/menu/mf;->N:Landroidx/appcompat/view/menu/mf;

    iget-object v1, v1, Landroidx/appcompat/view/menu/mf;->f:Landroidx/appcompat/view/menu/k51;

    iget-object v1, v1, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v0, v0, Landroidx/appcompat/view/menu/mf;->N:Landroidx/appcompat/view/menu/mf;

    iget-object v0, v0, Landroidx/appcompat/view/menu/mf;->f:Landroidx/appcompat/view/menu/k51;

    iget-object v0, v0, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iget-object v0, v0, Landroidx/appcompat/view/menu/nl;->k:Ljava/util/List;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v0, v0, Landroidx/appcompat/view/menu/mf;->f:Landroidx/appcompat/view/menu/k51;

    iget-object v0, v0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ky;->q(Landroidx/appcompat/view/menu/nl;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v0, v0, Landroidx/appcompat/view/menu/mf;->f:Landroidx/appcompat/view/menu/k51;

    iget-object v0, v0, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ky;->q(Landroidx/appcompat/view/menu/nl;)V

    :goto_2
    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    check-cast v0, Landroidx/appcompat/view/menu/jy;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/jy;->K0()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget v1, v1, Landroidx/appcompat/view/menu/nl;->g:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/mf;->F0(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget v1, v1, Landroidx/appcompat/view/menu/nl;->g:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/mf;->G0(I)V

    :goto_0
    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/nl;->c()V

    return-void
.end method

.method public m()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final q(Landroidx/appcompat/view/menu/nl;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-object v0, v0, Landroidx/appcompat/view/menu/nl;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p1, Landroidx/appcompat/view/menu/nl;->l:Ljava/util/List;

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
