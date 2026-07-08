.class public Landroidx/appcompat/view/menu/k51;
.super Landroidx/appcompat/view/menu/y71;
.source "SourceFile"


# instance fields
.field public k:Landroidx/appcompat/view/menu/nl;

.field public l:Landroidx/appcompat/view/menu/zl;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/mf;)V
    .locals 2

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/y71;-><init>(Landroidx/appcompat/view/menu/mf;)V

    new-instance p1, Landroidx/appcompat/view/menu/nl;

    invoke-direct {p1, p0}, Landroidx/appcompat/view/menu/nl;-><init>(Landroidx/appcompat/view/menu/y71;)V

    iput-object p1, p0, Landroidx/appcompat/view/menu/k51;->k:Landroidx/appcompat/view/menu/nl;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/view/menu/k51;->l:Landroidx/appcompat/view/menu/zl;

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    sget-object v1, Landroidx/appcompat/view/menu/nl$a;->r:Landroidx/appcompat/view/menu/nl$a;

    iput-object v1, v0, Landroidx/appcompat/view/menu/nl;->e:Landroidx/appcompat/view/menu/nl$a;

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    sget-object v1, Landroidx/appcompat/view/menu/nl$a;->s:Landroidx/appcompat/view/menu/nl$a;

    iput-object v1, v0, Landroidx/appcompat/view/menu/nl;->e:Landroidx/appcompat/view/menu/nl$a;

    sget-object v0, Landroidx/appcompat/view/menu/nl$a;->t:Landroidx/appcompat/view/menu/nl$a;

    iput-object v0, p1, Landroidx/appcompat/view/menu/nl;->e:Landroidx/appcompat/view/menu/nl$a;

    const/4 p1, 0x1

    iput p1, p0, Landroidx/appcompat/view/menu/y71;->f:I

    return-void
.end method


# virtual methods
.method public a(Landroidx/appcompat/view/menu/jl;)V
    .locals 6

    sget-object v0, Landroidx/appcompat/view/menu/k51$a;->a:[I

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->j:Landroidx/appcompat/view/menu/y71$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v1, v0, Landroidx/appcompat/view/menu/mf;->C:Landroidx/appcompat/view/menu/kf;

    iget-object v0, v0, Landroidx/appcompat/view/menu/mf;->E:Landroidx/appcompat/view/menu/kf;

    invoke-virtual {p0, p1, v1, v0, v3}, Landroidx/appcompat/view/menu/y71;->n(Landroidx/appcompat/view/menu/jl;Landroidx/appcompat/view/menu/kf;Landroidx/appcompat/view/menu/kf;I)V

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/y71;->o(Landroidx/appcompat/view/menu/jl;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/y71;->p(Landroidx/appcompat/view/menu/jl;)V

    :goto_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iget-boolean v0, p1, Landroidx/appcompat/view/menu/nl;->c:Z

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    if-eqz v0, :cond_8

    iget-boolean p1, p1, Landroidx/appcompat/view/menu/nl;->j:Z

    if-nez p1, :cond_8

    iget-object p1, p0, Landroidx/appcompat/view/menu/y71;->d:Landroidx/appcompat/view/menu/mf$b;

    sget-object v0, Landroidx/appcompat/view/menu/mf$b;->o:Landroidx/appcompat/view/menu/mf$b;

    if-ne p1, v0, :cond_8

    iget-object p1, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget v0, p1, Landroidx/appcompat/view/menu/mf;->m:I

    if-eq v0, v2, :cond_7

    if-eq v0, v1, :cond_3

    goto :goto_4

    :cond_3
    iget-object v0, p1, Landroidx/appcompat/view/menu/mf;->e:Landroidx/appcompat/view/menu/jz;

    iget-object v0, v0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iget-boolean v0, v0, Landroidx/appcompat/view/menu/nl;->j:Z

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/mf;->u()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_6

    if-eqz p1, :cond_5

    if-eq p1, v3, :cond_4

    move p1, v5

    goto :goto_3

    :cond_4
    iget-object p1, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v0, p1, Landroidx/appcompat/view/menu/mf;->e:Landroidx/appcompat/view/menu/jz;

    iget-object v0, v0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iget v0, v0, Landroidx/appcompat/view/menu/nl;->g:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/mf;->t()F

    move-result p1

    :goto_1
    div-float/2addr v0, p1

    :goto_2
    add-float/2addr v0, v4

    float-to-int p1, v0

    goto :goto_3

    :cond_5
    iget-object p1, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v0, p1, Landroidx/appcompat/view/menu/mf;->e:Landroidx/appcompat/view/menu/jz;

    iget-object v0, v0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iget v0, v0, Landroidx/appcompat/view/menu/nl;->g:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/mf;->t()F

    move-result p1

    mul-float/2addr v0, p1

    goto :goto_2

    :cond_6
    iget-object p1, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v0, p1, Landroidx/appcompat/view/menu/mf;->e:Landroidx/appcompat/view/menu/jz;

    iget-object v0, v0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iget v0, v0, Landroidx/appcompat/view/menu/nl;->g:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/mf;->t()F

    move-result p1

    goto :goto_1

    :goto_3
    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/zl;->d(I)V

    goto :goto_4

    :cond_7
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/mf;->G()Landroidx/appcompat/view/menu/mf;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p1, Landroidx/appcompat/view/menu/mf;->f:Landroidx/appcompat/view/menu/k51;

    iget-object p1, p1, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iget-boolean v0, p1, Landroidx/appcompat/view/menu/nl;->j:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget v0, v0, Landroidx/appcompat/view/menu/mf;->t:F

    iget p1, p1, Landroidx/appcompat/view/menu/nl;->g:I

    int-to-float p1, p1

    mul-float/2addr p1, v0

    add-float/2addr p1, v4

    float-to-int p1, p1

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/zl;->d(I)V

    :cond_8
    :goto_4
    iget-object p1, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-boolean v0, p1, Landroidx/appcompat/view/menu/nl;->c:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iget-boolean v1, v0, Landroidx/appcompat/view/menu/nl;->c:Z

    if-nez v1, :cond_9

    goto/16 :goto_6

    :cond_9
    iget-boolean p1, p1, Landroidx/appcompat/view/menu/nl;->j:Z

    if-eqz p1, :cond_a

    iget-boolean p1, v0, Landroidx/appcompat/view/menu/nl;->j:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iget-boolean p1, p1, Landroidx/appcompat/view/menu/nl;->j:Z

    if-eqz p1, :cond_a

    return-void

    :cond_a
    iget-object p1, p0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iget-boolean p1, p1, Landroidx/appcompat/view/menu/nl;->j:Z

    if-nez p1, :cond_b

    iget-object p1, p0, Landroidx/appcompat/view/menu/y71;->d:Landroidx/appcompat/view/menu/mf$b;

    sget-object v0, Landroidx/appcompat/view/menu/mf$b;->o:Landroidx/appcompat/view/menu/mf$b;

    if-ne p1, v0, :cond_b

    iget-object p1, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget v0, p1, Landroidx/appcompat/view/menu/mf;->l:I

    if-nez v0, :cond_b

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/mf;->X()Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-object p1, p1, Landroidx/appcompat/view/menu/nl;->l:Ljava/util/List;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/nl;

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iget-object v0, v0, Landroidx/appcompat/view/menu/nl;->l:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/nl;

    iget p1, p1, Landroidx/appcompat/view/menu/nl;->g:I

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget v2, v1, Landroidx/appcompat/view/menu/nl;->f:I

    add-int/2addr p1, v2

    iget v0, v0, Landroidx/appcompat/view/menu/nl;->g:I

    iget-object v2, p0, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iget v2, v2, Landroidx/appcompat/view/menu/nl;->f:I

    add-int/2addr v0, v2

    sub-int v2, v0, p1

    invoke-virtual {v1, p1}, Landroidx/appcompat/view/menu/nl;->d(I)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/nl;->d(I)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    invoke-virtual {p1, v2}, Landroidx/appcompat/view/menu/zl;->d(I)V

    return-void

    :cond_b
    iget-object p1, p0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iget-boolean p1, p1, Landroidx/appcompat/view/menu/nl;->j:Z

    if-nez p1, :cond_d

    iget-object p1, p0, Landroidx/appcompat/view/menu/y71;->d:Landroidx/appcompat/view/menu/mf$b;

    sget-object v0, Landroidx/appcompat/view/menu/mf$b;->o:Landroidx/appcompat/view/menu/mf$b;

    if-ne p1, v0, :cond_d

    iget p1, p0, Landroidx/appcompat/view/menu/y71;->a:I

    if-ne p1, v3, :cond_d

    iget-object p1, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-object p1, p1, Landroidx/appcompat/view/menu/nl;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_d

    iget-object p1, p0, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iget-object p1, p1, Landroidx/appcompat/view/menu/nl;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_d

    iget-object p1, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-object p1, p1, Landroidx/appcompat/view/menu/nl;->l:Ljava/util/List;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/nl;

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iget-object v0, v0, Landroidx/appcompat/view/menu/nl;->l:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/nl;

    iget p1, p1, Landroidx/appcompat/view/menu/nl;->g:I

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget v1, v1, Landroidx/appcompat/view/menu/nl;->f:I

    add-int/2addr p1, v1

    iget v0, v0, Landroidx/appcompat/view/menu/nl;->g:I

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iget v1, v1, Landroidx/appcompat/view/menu/nl;->f:I

    add-int/2addr v0, v1

    sub-int/2addr v0, p1

    iget-object p1, p0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iget v1, p1, Landroidx/appcompat/view/menu/zl;->m:I

    if-ge v0, v1, :cond_c

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/zl;->d(I)V

    goto :goto_5

    :cond_c
    invoke-virtual {p1, v1}, Landroidx/appcompat/view/menu/zl;->d(I)V

    :cond_d
    :goto_5
    iget-object p1, p0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iget-boolean p1, p1, Landroidx/appcompat/view/menu/nl;->j:Z

    if-nez p1, :cond_e

    return-void

    :cond_e
    iget-object p1, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-object p1, p1, Landroidx/appcompat/view/menu/nl;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_10

    iget-object p1, p0, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iget-object p1, p1, Landroidx/appcompat/view/menu/nl;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_10

    iget-object p1, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-object p1, p1, Landroidx/appcompat/view/menu/nl;->l:Ljava/util/List;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/nl;

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iget-object v0, v0, Landroidx/appcompat/view/menu/nl;->l:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/nl;

    iget v1, p1, Landroidx/appcompat/view/menu/nl;->g:I

    iget-object v2, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget v2, v2, Landroidx/appcompat/view/menu/nl;->f:I

    add-int/2addr v1, v2

    iget v2, v0, Landroidx/appcompat/view/menu/nl;->g:I

    iget-object v3, p0, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iget v3, v3, Landroidx/appcompat/view/menu/nl;->f:I

    add-int/2addr v2, v3

    iget-object v3, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/mf;->K()F

    move-result v3

    if-ne p1, v0, :cond_f

    iget v1, p1, Landroidx/appcompat/view/menu/nl;->g:I

    iget v2, v0, Landroidx/appcompat/view/menu/nl;->g:I

    move v3, v4

    :cond_f
    sub-int/2addr v2, v1

    iget-object p1, p0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iget p1, p1, Landroidx/appcompat/view/menu/nl;->g:I

    sub-int/2addr v2, p1

    iget-object p1, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    int-to-float v0, v1

    add-float/2addr v0, v4

    int-to-float v1, v2

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/nl;->d(I)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget v0, v0, Landroidx/appcompat/view/menu/nl;->g:I

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iget v1, v1, Landroidx/appcompat/view/menu/nl;->g:I

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/nl;->d(I)V

    :cond_10
    :goto_6
    return-void
.end method

.method public d()V
    .locals 10

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-boolean v1, v0, Landroidx/appcompat/view/menu/mf;->a:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mf;->v()I

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/zl;->d(I)V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iget-boolean v0, v0, Landroidx/appcompat/view/menu/nl;->j:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mf;->M()Landroidx/appcompat/view/menu/mf$b;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/y71;->d:Landroidx/appcompat/view/menu/mf$b;

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mf;->S()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroidx/appcompat/view/menu/d8;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/d8;-><init>(Landroidx/appcompat/view/menu/y71;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/k51;->l:Landroidx/appcompat/view/menu/zl;

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->d:Landroidx/appcompat/view/menu/mf$b;

    sget-object v1, Landroidx/appcompat/view/menu/mf$b;->o:Landroidx/appcompat/view/menu/mf$b;

    if-eq v0, v1, :cond_4

    sget-object v1, Landroidx/appcompat/view/menu/mf$b;->p:Landroidx/appcompat/view/menu/mf$b;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mf;->G()Landroidx/appcompat/view/menu/mf;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mf;->M()Landroidx/appcompat/view/menu/mf$b;

    move-result-object v1

    sget-object v2, Landroidx/appcompat/view/menu/mf$b;->m:Landroidx/appcompat/view/menu/mf$b;

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mf;->v()I

    move-result v1

    iget-object v2, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v2, v2, Landroidx/appcompat/view/menu/mf;->C:Landroidx/appcompat/view/menu/kf;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/kf;->c()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v2, v2, Landroidx/appcompat/view/menu/mf;->E:Landroidx/appcompat/view/menu/kf;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/kf;->c()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-object v3, v0, Landroidx/appcompat/view/menu/mf;->f:Landroidx/appcompat/view/menu/k51;

    iget-object v3, v3, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-object v4, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v4, v4, Landroidx/appcompat/view/menu/mf;->C:Landroidx/appcompat/view/menu/kf;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/kf;->c()I

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Landroidx/appcompat/view/menu/y71;->b(Landroidx/appcompat/view/menu/nl;Landroidx/appcompat/view/menu/nl;I)V

    iget-object v2, p0, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iget-object v0, v0, Landroidx/appcompat/view/menu/mf;->f:Landroidx/appcompat/view/menu/k51;

    iget-object v0, v0, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iget-object v3, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v3, v3, Landroidx/appcompat/view/menu/mf;->E:Landroidx/appcompat/view/menu/kf;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/kf;->c()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {p0, v2, v0, v3}, Landroidx/appcompat/view/menu/y71;->b(Landroidx/appcompat/view/menu/nl;Landroidx/appcompat/view/menu/nl;I)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/zl;->d(I)V

    return-void

    :cond_2
    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->d:Landroidx/appcompat/view/menu/mf$b;

    sget-object v1, Landroidx/appcompat/view/menu/mf$b;->m:Landroidx/appcompat/view/menu/mf$b;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/mf;->v()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/zl;->d(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->d:Landroidx/appcompat/view/menu/mf$b;

    sget-object v1, Landroidx/appcompat/view/menu/mf$b;->p:Landroidx/appcompat/view/menu/mf$b;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mf;->G()Landroidx/appcompat/view/menu/mf;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mf;->M()Landroidx/appcompat/view/menu/mf$b;

    move-result-object v1

    sget-object v2, Landroidx/appcompat/view/menu/mf$b;->m:Landroidx/appcompat/view/menu/mf$b;

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-object v2, v0, Landroidx/appcompat/view/menu/mf;->f:Landroidx/appcompat/view/menu/k51;

    iget-object v2, v2, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-object v3, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v3, v3, Landroidx/appcompat/view/menu/mf;->C:Landroidx/appcompat/view/menu/kf;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/kf;->c()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Landroidx/appcompat/view/menu/y71;->b(Landroidx/appcompat/view/menu/nl;Landroidx/appcompat/view/menu/nl;I)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iget-object v0, v0, Landroidx/appcompat/view/menu/mf;->f:Landroidx/appcompat/view/menu/k51;

    iget-object v0, v0, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iget-object v2, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v2, v2, Landroidx/appcompat/view/menu/mf;->E:Landroidx/appcompat/view/menu/kf;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/kf;->c()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0, v1, v0, v2}, Landroidx/appcompat/view/menu/y71;->b(Landroidx/appcompat/view/menu/nl;Landroidx/appcompat/view/menu/nl;I)V

    return-void

    :cond_4
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iget-boolean v1, v0, Landroidx/appcompat/view/menu/nl;->j:Z

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x3

    if-eqz v1, :cond_d

    iget-object v7, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-boolean v8, v7, Landroidx/appcompat/view/menu/mf;->a:Z

    if-eqz v8, :cond_d

    iget-object v0, v7, Landroidx/appcompat/view/menu/mf;->J:[Landroidx/appcompat/view/menu/kf;

    aget-object v1, v0, v4

    iget-object v8, v1, Landroidx/appcompat/view/menu/kf;->d:Landroidx/appcompat/view/menu/kf;

    if-eqz v8, :cond_8

    aget-object v9, v0, v6

    iget-object v9, v9, Landroidx/appcompat/view/menu/kf;->d:Landroidx/appcompat/view/menu/kf;

    if-eqz v9, :cond_8

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/mf;->X()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v1, v1, Landroidx/appcompat/view/menu/mf;->J:[Landroidx/appcompat/view/menu/kf;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/kf;->c()I

    move-result v1

    iput v1, v0, Landroidx/appcompat/view/menu/nl;->f:I

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v1, v1, Landroidx/appcompat/view/menu/mf;->J:[Landroidx/appcompat/view/menu/kf;

    aget-object v1, v1, v6

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/kf;->c()I

    move-result v1

    neg-int v1, v1

    iput v1, v0, Landroidx/appcompat/view/menu/nl;->f:I

    goto :goto_1

    :cond_5
    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v0, v0, Landroidx/appcompat/view/menu/mf;->J:[Landroidx/appcompat/view/menu/kf;

    aget-object v0, v0, v4

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/y71;->h(Landroidx/appcompat/view/menu/kf;)Landroidx/appcompat/view/menu/nl;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-object v2, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v2, v2, Landroidx/appcompat/view/menu/mf;->J:[Landroidx/appcompat/view/menu/kf;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/kf;->c()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Landroidx/appcompat/view/menu/y71;->b(Landroidx/appcompat/view/menu/nl;Landroidx/appcompat/view/menu/nl;I)V

    :cond_6
    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v0, v0, Landroidx/appcompat/view/menu/mf;->J:[Landroidx/appcompat/view/menu/kf;

    aget-object v0, v0, v6

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/y71;->h(Landroidx/appcompat/view/menu/kf;)Landroidx/appcompat/view/menu/nl;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iget-object v2, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v2, v2, Landroidx/appcompat/view/menu/mf;->J:[Landroidx/appcompat/view/menu/kf;

    aget-object v2, v2, v6

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/kf;->c()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0, v1, v0, v2}, Landroidx/appcompat/view/menu/y71;->b(Landroidx/appcompat/view/menu/nl;Landroidx/appcompat/view/menu/nl;I)V

    :cond_7
    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iput-boolean v5, v0, Landroidx/appcompat/view/menu/nl;->b:Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iput-boolean v5, v0, Landroidx/appcompat/view/menu/nl;->b:Z

    :goto_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mf;->S()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroidx/appcompat/view/menu/k51;->k:Landroidx/appcompat/view/menu/nl;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-object v2, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/mf;->n()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroidx/appcompat/view/menu/y71;->b(Landroidx/appcompat/view/menu/nl;Landroidx/appcompat/view/menu/nl;I)V

    goto/16 :goto_5

    :cond_8
    if-eqz v8, :cond_9

    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/y71;->h(Landroidx/appcompat/view/menu/kf;)Landroidx/appcompat/view/menu/nl;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-object v2, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v2, v2, Landroidx/appcompat/view/menu/mf;->J:[Landroidx/appcompat/view/menu/kf;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/kf;->c()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Landroidx/appcompat/view/menu/y71;->b(Landroidx/appcompat/view/menu/nl;Landroidx/appcompat/view/menu/nl;I)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-object v2, p0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iget v2, v2, Landroidx/appcompat/view/menu/nl;->g:I

    invoke-virtual {p0, v0, v1, v2}, Landroidx/appcompat/view/menu/y71;->b(Landroidx/appcompat/view/menu/nl;Landroidx/appcompat/view/menu/nl;I)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mf;->S()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroidx/appcompat/view/menu/k51;->k:Landroidx/appcompat/view/menu/nl;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-object v2, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/mf;->n()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroidx/appcompat/view/menu/y71;->b(Landroidx/appcompat/view/menu/nl;Landroidx/appcompat/view/menu/nl;I)V

    goto/16 :goto_5

    :cond_9
    aget-object v1, v0, v6

    iget-object v4, v1, Landroidx/appcompat/view/menu/kf;->d:Landroidx/appcompat/view/menu/kf;

    if-eqz v4, :cond_b

    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/y71;->h(Landroidx/appcompat/view/menu/kf;)Landroidx/appcompat/view/menu/nl;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iget-object v2, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v2, v2, Landroidx/appcompat/view/menu/mf;->J:[Landroidx/appcompat/view/menu/kf;

    aget-object v2, v2, v6

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/kf;->c()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0, v1, v0, v2}, Landroidx/appcompat/view/menu/y71;->b(Landroidx/appcompat/view/menu/nl;Landroidx/appcompat/view/menu/nl;I)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iget-object v2, p0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iget v2, v2, Landroidx/appcompat/view/menu/nl;->g:I

    neg-int v2, v2

    invoke-virtual {p0, v0, v1, v2}, Landroidx/appcompat/view/menu/y71;->b(Landroidx/appcompat/view/menu/nl;Landroidx/appcompat/view/menu/nl;I)V

    :cond_a
    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mf;->S()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroidx/appcompat/view/menu/k51;->k:Landroidx/appcompat/view/menu/nl;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-object v2, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/mf;->n()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroidx/appcompat/view/menu/y71;->b(Landroidx/appcompat/view/menu/nl;Landroidx/appcompat/view/menu/nl;I)V

    goto/16 :goto_5

    :cond_b
    aget-object v0, v0, v3

    iget-object v1, v0, Landroidx/appcompat/view/menu/kf;->d:Landroidx/appcompat/view/menu/kf;

    if-eqz v1, :cond_c

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/y71;->h(Landroidx/appcompat/view/menu/kf;)Landroidx/appcompat/view/menu/nl;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v1, p0, Landroidx/appcompat/view/menu/k51;->k:Landroidx/appcompat/view/menu/nl;

    invoke-virtual {p0, v1, v0, v2}, Landroidx/appcompat/view/menu/y71;->b(Landroidx/appcompat/view/menu/nl;Landroidx/appcompat/view/menu/nl;I)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-object v1, p0, Landroidx/appcompat/view/menu/k51;->k:Landroidx/appcompat/view/menu/nl;

    iget-object v2, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/mf;->n()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0, v0, v1, v2}, Landroidx/appcompat/view/menu/y71;->b(Landroidx/appcompat/view/menu/nl;Landroidx/appcompat/view/menu/nl;I)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-object v2, p0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iget v2, v2, Landroidx/appcompat/view/menu/nl;->g:I

    invoke-virtual {p0, v0, v1, v2}, Landroidx/appcompat/view/menu/y71;->b(Landroidx/appcompat/view/menu/nl;Landroidx/appcompat/view/menu/nl;I)V

    goto/16 :goto_5

    :cond_c
    instance-of v0, v7, Landroidx/appcompat/view/menu/dz;

    if-nez v0, :cond_1c

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/mf;->G()Landroidx/appcompat/view/menu/mf;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    sget-object v1, Landroidx/appcompat/view/menu/kf$b;->s:Landroidx/appcompat/view/menu/kf$b;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/mf;->m(Landroidx/appcompat/view/menu/kf$b;)Landroidx/appcompat/view/menu/kf;

    move-result-object v0

    iget-object v0, v0, Landroidx/appcompat/view/menu/kf;->d:Landroidx/appcompat/view/menu/kf;

    if-nez v0, :cond_1c

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mf;->G()Landroidx/appcompat/view/menu/mf;

    move-result-object v0

    iget-object v0, v0, Landroidx/appcompat/view/menu/mf;->f:Landroidx/appcompat/view/menu/k51;

    iget-object v0, v0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-object v2, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/mf;->R()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Landroidx/appcompat/view/menu/y71;->b(Landroidx/appcompat/view/menu/nl;Landroidx/appcompat/view/menu/nl;I)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-object v2, p0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iget v2, v2, Landroidx/appcompat/view/menu/nl;->g:I

    invoke-virtual {p0, v0, v1, v2}, Landroidx/appcompat/view/menu/y71;->b(Landroidx/appcompat/view/menu/nl;Landroidx/appcompat/view/menu/nl;I)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mf;->S()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroidx/appcompat/view/menu/k51;->k:Landroidx/appcompat/view/menu/nl;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-object v2, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/mf;->n()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroidx/appcompat/view/menu/y71;->b(Landroidx/appcompat/view/menu/nl;Landroidx/appcompat/view/menu/nl;I)V

    goto/16 :goto_5

    :cond_d
    if-nez v1, :cond_12

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->d:Landroidx/appcompat/view/menu/mf$b;

    sget-object v7, Landroidx/appcompat/view/menu/mf$b;->o:Landroidx/appcompat/view/menu/mf$b;

    if-ne v1, v7, :cond_12

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget v1, v0, Landroidx/appcompat/view/menu/mf;->m:I

    if-eq v1, v4, :cond_10

    if-eq v1, v6, :cond_e

    goto :goto_2

    :cond_e
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mf;->X()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget v1, v0, Landroidx/appcompat/view/menu/mf;->l:I

    if-ne v1, v6, :cond_f

    goto :goto_2

    :cond_f
    iget-object v0, v0, Landroidx/appcompat/view/menu/mf;->e:Landroidx/appcompat/view/menu/jz;

    iget-object v0, v0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iget-object v1, v1, Landroidx/appcompat/view/menu/nl;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Landroidx/appcompat/view/menu/nl;->k:Ljava/util/List;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iput-boolean v5, v0, Landroidx/appcompat/view/menu/nl;->b:Z

    iget-object v0, v0, Landroidx/appcompat/view/menu/nl;->k:Ljava/util/List;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iget-object v0, v0, Landroidx/appcompat/view/menu/nl;->k:Ljava/util/List;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_10
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mf;->G()Landroidx/appcompat/view/menu/mf;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_2

    :cond_11
    iget-object v0, v0, Landroidx/appcompat/view/menu/mf;->f:Landroidx/appcompat/view/menu/k51;

    iget-object v0, v0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iget-object v1, v1, Landroidx/appcompat/view/menu/nl;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Landroidx/appcompat/view/menu/nl;->k:Ljava/util/List;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iput-boolean v5, v0, Landroidx/appcompat/view/menu/nl;->b:Z

    iget-object v0, v0, Landroidx/appcompat/view/menu/nl;->k:Ljava/util/List;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iget-object v0, v0, Landroidx/appcompat/view/menu/nl;->k:Ljava/util/List;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_12
    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/nl;->b(Landroidx/appcompat/view/menu/jl;)V

    :cond_13
    :goto_2
    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v1, v0, Landroidx/appcompat/view/menu/mf;->J:[Landroidx/appcompat/view/menu/kf;

    aget-object v7, v1, v4

    iget-object v8, v7, Landroidx/appcompat/view/menu/kf;->d:Landroidx/appcompat/view/menu/kf;

    if-eqz v8, :cond_15

    aget-object v9, v1, v6

    iget-object v9, v9, Landroidx/appcompat/view/menu/kf;->d:Landroidx/appcompat/view/menu/kf;

    if-eqz v9, :cond_15

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mf;->X()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v1, v1, Landroidx/appcompat/view/menu/mf;->J:[Landroidx/appcompat/view/menu/kf;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/kf;->c()I

    move-result v1

    iput v1, v0, Landroidx/appcompat/view/menu/nl;->f:I

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v1, v1, Landroidx/appcompat/view/menu/mf;->J:[Landroidx/appcompat/view/menu/kf;

    aget-object v1, v1, v6

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/kf;->c()I

    move-result v1

    neg-int v1, v1

    iput v1, v0, Landroidx/appcompat/view/menu/nl;->f:I

    goto :goto_3

    :cond_14
    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v0, v0, Landroidx/appcompat/view/menu/mf;->J:[Landroidx/appcompat/view/menu/kf;

    aget-object v0, v0, v4

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/y71;->h(Landroidx/appcompat/view/menu/kf;)Landroidx/appcompat/view/menu/nl;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v1, v1, Landroidx/appcompat/view/menu/mf;->J:[Landroidx/appcompat/view/menu/kf;

    aget-object v1, v1, v6

    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/y71;->h(Landroidx/appcompat/view/menu/kf;)Landroidx/appcompat/view/menu/nl;

    move-result-object v1

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/nl;->b(Landroidx/appcompat/view/menu/jl;)V

    invoke-virtual {v1, p0}, Landroidx/appcompat/view/menu/nl;->b(Landroidx/appcompat/view/menu/jl;)V

    sget-object v0, Landroidx/appcompat/view/menu/y71$b;->p:Landroidx/appcompat/view/menu/y71$b;

    iput-object v0, p0, Landroidx/appcompat/view/menu/y71;->j:Landroidx/appcompat/view/menu/y71$b;

    :goto_3
    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mf;->S()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroidx/appcompat/view/menu/k51;->k:Landroidx/appcompat/view/menu/nl;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-object v2, p0, Landroidx/appcompat/view/menu/k51;->l:Landroidx/appcompat/view/menu/zl;

    invoke-virtual {p0, v0, v1, v5, v2}, Landroidx/appcompat/view/menu/y71;->c(Landroidx/appcompat/view/menu/nl;Landroidx/appcompat/view/menu/nl;ILandroidx/appcompat/view/menu/zl;)V

    goto/16 :goto_4

    :cond_15
    const/4 v9, 0x0

    if-eqz v8, :cond_17

    invoke-virtual {p0, v7}, Landroidx/appcompat/view/menu/y71;->h(Landroidx/appcompat/view/menu/kf;)Landroidx/appcompat/view/menu/nl;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-object v2, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v2, v2, Landroidx/appcompat/view/menu/mf;->J:[Landroidx/appcompat/view/menu/kf;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/kf;->c()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Landroidx/appcompat/view/menu/y71;->b(Landroidx/appcompat/view/menu/nl;Landroidx/appcompat/view/menu/nl;I)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-object v2, p0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    invoke-virtual {p0, v0, v1, v5, v2}, Landroidx/appcompat/view/menu/y71;->c(Landroidx/appcompat/view/menu/nl;Landroidx/appcompat/view/menu/nl;ILandroidx/appcompat/view/menu/zl;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mf;->S()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroidx/appcompat/view/menu/k51;->k:Landroidx/appcompat/view/menu/nl;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-object v2, p0, Landroidx/appcompat/view/menu/k51;->l:Landroidx/appcompat/view/menu/zl;

    invoke-virtual {p0, v0, v1, v5, v2}, Landroidx/appcompat/view/menu/y71;->c(Landroidx/appcompat/view/menu/nl;Landroidx/appcompat/view/menu/nl;ILandroidx/appcompat/view/menu/zl;)V

    :cond_16
    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->d:Landroidx/appcompat/view/menu/mf$b;

    sget-object v1, Landroidx/appcompat/view/menu/mf$b;->o:Landroidx/appcompat/view/menu/mf$b;

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mf;->t()F

    move-result v0

    cmpl-float v0, v0, v9

    if-lez v0, :cond_1b

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v0, v0, Landroidx/appcompat/view/menu/mf;->e:Landroidx/appcompat/view/menu/jz;

    iget-object v2, v0, Landroidx/appcompat/view/menu/y71;->d:Landroidx/appcompat/view/menu/mf$b;

    if-ne v2, v1, :cond_1b

    iget-object v0, v0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iget-object v0, v0, Landroidx/appcompat/view/menu/nl;->k:Ljava/util/List;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iget-object v0, v0, Landroidx/appcompat/view/menu/nl;->l:Ljava/util/List;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v1, v1, Landroidx/appcompat/view/menu/mf;->e:Landroidx/appcompat/view/menu/jz;

    iget-object v1, v1, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iput-object p0, v0, Landroidx/appcompat/view/menu/nl;->a:Landroidx/appcompat/view/menu/jl;

    goto/16 :goto_4

    :cond_17
    aget-object v4, v1, v6

    iget-object v7, v4, Landroidx/appcompat/view/menu/kf;->d:Landroidx/appcompat/view/menu/kf;

    const/4 v8, -0x1

    if-eqz v7, :cond_18

    invoke-virtual {p0, v4}, Landroidx/appcompat/view/menu/y71;->h(Landroidx/appcompat/view/menu/kf;)Landroidx/appcompat/view/menu/nl;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iget-object v2, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v2, v2, Landroidx/appcompat/view/menu/mf;->J:[Landroidx/appcompat/view/menu/kf;

    aget-object v2, v2, v6

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/kf;->c()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0, v1, v0, v2}, Landroidx/appcompat/view/menu/y71;->b(Landroidx/appcompat/view/menu/nl;Landroidx/appcompat/view/menu/nl;I)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iget-object v2, p0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    invoke-virtual {p0, v0, v1, v8, v2}, Landroidx/appcompat/view/menu/y71;->c(Landroidx/appcompat/view/menu/nl;Landroidx/appcompat/view/menu/nl;ILandroidx/appcompat/view/menu/zl;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mf;->S()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroidx/appcompat/view/menu/k51;->k:Landroidx/appcompat/view/menu/nl;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-object v2, p0, Landroidx/appcompat/view/menu/k51;->l:Landroidx/appcompat/view/menu/zl;

    invoke-virtual {p0, v0, v1, v5, v2}, Landroidx/appcompat/view/menu/y71;->c(Landroidx/appcompat/view/menu/nl;Landroidx/appcompat/view/menu/nl;ILandroidx/appcompat/view/menu/zl;)V

    goto/16 :goto_4

    :cond_18
    aget-object v1, v1, v3

    iget-object v3, v1, Landroidx/appcompat/view/menu/kf;->d:Landroidx/appcompat/view/menu/kf;

    if-eqz v3, :cond_19

    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/y71;->h(Landroidx/appcompat/view/menu/kf;)Landroidx/appcompat/view/menu/nl;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v1, p0, Landroidx/appcompat/view/menu/k51;->k:Landroidx/appcompat/view/menu/nl;

    invoke-virtual {p0, v1, v0, v2}, Landroidx/appcompat/view/menu/y71;->b(Landroidx/appcompat/view/menu/nl;Landroidx/appcompat/view/menu/nl;I)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-object v1, p0, Landroidx/appcompat/view/menu/k51;->k:Landroidx/appcompat/view/menu/nl;

    iget-object v2, p0, Landroidx/appcompat/view/menu/k51;->l:Landroidx/appcompat/view/menu/zl;

    invoke-virtual {p0, v0, v1, v8, v2}, Landroidx/appcompat/view/menu/y71;->c(Landroidx/appcompat/view/menu/nl;Landroidx/appcompat/view/menu/nl;ILandroidx/appcompat/view/menu/zl;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-object v2, p0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    invoke-virtual {p0, v0, v1, v5, v2}, Landroidx/appcompat/view/menu/y71;->c(Landroidx/appcompat/view/menu/nl;Landroidx/appcompat/view/menu/nl;ILandroidx/appcompat/view/menu/zl;)V

    goto :goto_4

    :cond_19
    instance-of v1, v0, Landroidx/appcompat/view/menu/dz;

    if-nez v1, :cond_1b

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mf;->G()Landroidx/appcompat/view/menu/mf;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mf;->G()Landroidx/appcompat/view/menu/mf;

    move-result-object v0

    iget-object v0, v0, Landroidx/appcompat/view/menu/mf;->f:Landroidx/appcompat/view/menu/k51;

    iget-object v0, v0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-object v2, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/mf;->R()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Landroidx/appcompat/view/menu/y71;->b(Landroidx/appcompat/view/menu/nl;Landroidx/appcompat/view/menu/nl;I)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-object v2, p0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    invoke-virtual {p0, v0, v1, v5, v2}, Landroidx/appcompat/view/menu/y71;->c(Landroidx/appcompat/view/menu/nl;Landroidx/appcompat/view/menu/nl;ILandroidx/appcompat/view/menu/zl;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mf;->S()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroidx/appcompat/view/menu/k51;->k:Landroidx/appcompat/view/menu/nl;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-object v2, p0, Landroidx/appcompat/view/menu/k51;->l:Landroidx/appcompat/view/menu/zl;

    invoke-virtual {p0, v0, v1, v5, v2}, Landroidx/appcompat/view/menu/y71;->c(Landroidx/appcompat/view/menu/nl;Landroidx/appcompat/view/menu/nl;ILandroidx/appcompat/view/menu/zl;)V

    :cond_1a
    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->d:Landroidx/appcompat/view/menu/mf$b;

    sget-object v1, Landroidx/appcompat/view/menu/mf$b;->o:Landroidx/appcompat/view/menu/mf$b;

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mf;->t()F

    move-result v0

    cmpl-float v0, v0, v9

    if-lez v0, :cond_1b

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v0, v0, Landroidx/appcompat/view/menu/mf;->e:Landroidx/appcompat/view/menu/jz;

    iget-object v2, v0, Landroidx/appcompat/view/menu/y71;->d:Landroidx/appcompat/view/menu/mf$b;

    if-ne v2, v1, :cond_1b

    iget-object v0, v0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iget-object v0, v0, Landroidx/appcompat/view/menu/nl;->k:Ljava/util/List;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iget-object v0, v0, Landroidx/appcompat/view/menu/nl;->l:Ljava/util/List;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v1, v1, Landroidx/appcompat/view/menu/mf;->e:Landroidx/appcompat/view/menu/jz;

    iget-object v1, v1, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iput-object p0, v0, Landroidx/appcompat/view/menu/nl;->a:Landroidx/appcompat/view/menu/jl;

    :cond_1b
    :goto_4
    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iget-object v0, v0, Landroidx/appcompat/view/menu/nl;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iput-boolean v5, v0, Landroidx/appcompat/view/menu/nl;->c:Z

    :cond_1c
    :goto_5
    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-boolean v1, v0, Landroidx/appcompat/view/menu/nl;->j:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget v0, v0, Landroidx/appcompat/view/menu/nl;->g:I

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/mf;->G0(I)V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/view/menu/y71;->c:Landroidx/appcompat/view/menu/zp0;

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/nl;->c()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/nl;->c()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/k51;->k:Landroidx/appcompat/view/menu/nl;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/nl;->c()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/nl;->c()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/y71;->g:Z

    return-void
.end method

.method public m()Z
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->d:Landroidx/appcompat/view/menu/mf$b;

    sget-object v1, Landroidx/appcompat/view/menu/mf$b;->o:Landroidx/appcompat/view/menu/mf$b;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget v0, v0, Landroidx/appcompat/view/menu/mf;->m:I

    if-nez v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    return v2
.end method

.method public q()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/y71;->g:Z

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/nl;->c()V

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iput-boolean v0, v1, Landroidx/appcompat/view/menu/nl;->j:Z

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/nl;->c()V

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iput-boolean v0, v1, Landroidx/appcompat/view/menu/nl;->j:Z

    iget-object v1, p0, Landroidx/appcompat/view/menu/k51;->k:Landroidx/appcompat/view/menu/nl;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/nl;->c()V

    iget-object v1, p0, Landroidx/appcompat/view/menu/k51;->k:Landroidx/appcompat/view/menu/nl;

    iput-boolean v0, v1, Landroidx/appcompat/view/menu/nl;->j:Z

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iput-boolean v0, v1, Landroidx/appcompat/view/menu/nl;->j:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VerticalRun "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/mf;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
