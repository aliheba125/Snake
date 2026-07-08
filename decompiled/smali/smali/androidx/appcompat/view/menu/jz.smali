.class public Landroidx/appcompat/view/menu/jz;
.super Landroidx/appcompat/view/menu/y71;
.source "SourceFile"


# static fields
.field public static k:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Landroidx/appcompat/view/menu/jz;->k:[I

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/view/menu/mf;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/y71;-><init>(Landroidx/appcompat/view/menu/mf;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    sget-object v0, Landroidx/appcompat/view/menu/nl$a;->p:Landroidx/appcompat/view/menu/nl$a;

    iput-object v0, p1, Landroidx/appcompat/view/menu/nl;->e:Landroidx/appcompat/view/menu/nl$a;

    iget-object p1, p0, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    sget-object v0, Landroidx/appcompat/view/menu/nl$a;->q:Landroidx/appcompat/view/menu/nl$a;

    iput-object v0, p1, Landroidx/appcompat/view/menu/nl;->e:Landroidx/appcompat/view/menu/nl$a;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/appcompat/view/menu/y71;->f:I

    return-void
.end method


# virtual methods
.method public a(Landroidx/appcompat/view/menu/jl;)V
    .locals 16

    move-object/from16 v8, p0

    sget-object v0, Landroidx/appcompat/view/menu/jz$a;->a:[I

    iget-object v1, v8, Landroidx/appcompat/view/menu/y71;->j:Landroidx/appcompat/view/menu/y71$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eq v0, v9, :cond_2

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v8, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v1, v0, Landroidx/appcompat/view/menu/mf;->B:Landroidx/appcompat/view/menu/kf;

    iget-object v0, v0, Landroidx/appcompat/view/menu/mf;->D:Landroidx/appcompat/view/menu/kf;

    move-object/from16 v3, p1

    invoke-virtual {v8, v3, v1, v0, v10}, Landroidx/appcompat/view/menu/y71;->n(Landroidx/appcompat/view/menu/jl;Landroidx/appcompat/view/menu/kf;Landroidx/appcompat/view/menu/kf;I)V

    return-void

    :cond_1
    move-object/from16 v3, p1

    invoke-virtual/range {p0 .. p1}, Landroidx/appcompat/view/menu/y71;->o(Landroidx/appcompat/view/menu/jl;)V

    goto :goto_0

    :cond_2
    move-object/from16 v3, p1

    invoke-virtual/range {p0 .. p1}, Landroidx/appcompat/view/menu/y71;->p(Landroidx/appcompat/view/menu/jl;)V

    :goto_0
    iget-object v0, v8, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iget-boolean v0, v0, Landroidx/appcompat/view/menu/nl;->j:Z

    const/high16 v11, 0x3f000000    # 0.5f

    if-nez v0, :cond_24

    iget-object v0, v8, Landroidx/appcompat/view/menu/y71;->d:Landroidx/appcompat/view/menu/mf$b;

    sget-object v3, Landroidx/appcompat/view/menu/mf$b;->o:Landroidx/appcompat/view/menu/mf$b;

    if-ne v0, v3, :cond_24

    iget-object v0, v8, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget v3, v0, Landroidx/appcompat/view/menu/mf;->l:I

    if-eq v3, v1, :cond_23

    if-eq v3, v2, :cond_3

    goto/16 :goto_f

    :cond_3
    iget v1, v0, Landroidx/appcompat/view/menu/mf;->m:I

    const/4 v3, -0x1

    if-eqz v1, :cond_8

    if-ne v1, v2, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mf;->u()I

    move-result v0

    if-eq v0, v3, :cond_7

    if-eqz v0, :cond_6

    if-eq v0, v9, :cond_5

    move v0, v10

    goto :goto_3

    :cond_5
    iget-object v0, v8, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v1, v0, Landroidx/appcompat/view/menu/mf;->f:Landroidx/appcompat/view/menu/k51;

    iget-object v1, v1, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iget v1, v1, Landroidx/appcompat/view/menu/nl;->g:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mf;->t()F

    move-result v0

    :goto_1
    mul-float/2addr v1, v0

    :goto_2
    add-float/2addr v1, v11

    float-to-int v0, v1

    goto :goto_3

    :cond_6
    iget-object v0, v8, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v1, v0, Landroidx/appcompat/view/menu/mf;->f:Landroidx/appcompat/view/menu/k51;

    iget-object v1, v1, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iget v1, v1, Landroidx/appcompat/view/menu/nl;->g:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mf;->t()F

    move-result v0

    div-float/2addr v1, v0

    goto :goto_2

    :cond_7
    iget-object v0, v8, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v1, v0, Landroidx/appcompat/view/menu/mf;->f:Landroidx/appcompat/view/menu/k51;

    iget-object v1, v1, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iget v1, v1, Landroidx/appcompat/view/menu/nl;->g:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mf;->t()F

    move-result v0

    goto :goto_1

    :goto_3
    iget-object v1, v8, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/zl;->d(I)V

    goto/16 :goto_f

    :cond_8
    :goto_4
    iget-object v1, v0, Landroidx/appcompat/view/menu/mf;->f:Landroidx/appcompat/view/menu/k51;

    iget-object v12, v1, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-object v13, v1, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iget-object v1, v0, Landroidx/appcompat/view/menu/mf;->B:Landroidx/appcompat/view/menu/kf;

    iget-object v1, v1, Landroidx/appcompat/view/menu/kf;->d:Landroidx/appcompat/view/menu/kf;

    if-eqz v1, :cond_9

    move v1, v9

    goto :goto_5

    :cond_9
    move v1, v10

    :goto_5
    iget-object v2, v0, Landroidx/appcompat/view/menu/mf;->C:Landroidx/appcompat/view/menu/kf;

    iget-object v2, v2, Landroidx/appcompat/view/menu/kf;->d:Landroidx/appcompat/view/menu/kf;

    if-eqz v2, :cond_a

    move v2, v9

    goto :goto_6

    :cond_a
    move v2, v10

    :goto_6
    iget-object v4, v0, Landroidx/appcompat/view/menu/mf;->D:Landroidx/appcompat/view/menu/kf;

    iget-object v4, v4, Landroidx/appcompat/view/menu/kf;->d:Landroidx/appcompat/view/menu/kf;

    if-eqz v4, :cond_b

    move v4, v9

    goto :goto_7

    :cond_b
    move v4, v10

    :goto_7
    iget-object v5, v0, Landroidx/appcompat/view/menu/mf;->E:Landroidx/appcompat/view/menu/kf;

    iget-object v5, v5, Landroidx/appcompat/view/menu/kf;->d:Landroidx/appcompat/view/menu/kf;

    if-eqz v5, :cond_c

    move v5, v9

    goto :goto_8

    :cond_c
    move v5, v10

    :goto_8
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mf;->u()I

    move-result v14

    if-eqz v1, :cond_15

    if-eqz v2, :cond_15

    if-eqz v4, :cond_15

    if-eqz v5, :cond_15

    iget-object v0, v8, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mf;->t()F

    move-result v15

    iget-boolean v0, v12, Landroidx/appcompat/view/menu/nl;->j:Z

    if-eqz v0, :cond_f

    iget-boolean v0, v13, Landroidx/appcompat/view/menu/nl;->j:Z

    if-eqz v0, :cond_f

    iget-object v0, v8, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-boolean v1, v0, Landroidx/appcompat/view/menu/nl;->c:Z

    if-eqz v1, :cond_e

    iget-object v1, v8, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iget-boolean v1, v1, Landroidx/appcompat/view/menu/nl;->c:Z

    if-nez v1, :cond_d

    goto :goto_9

    :cond_d
    iget-object v0, v0, Landroidx/appcompat/view/menu/nl;->l:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/nl;

    iget v0, v0, Landroidx/appcompat/view/menu/nl;->g:I

    iget-object v1, v8, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget v1, v1, Landroidx/appcompat/view/menu/nl;->f:I

    add-int v2, v0, v1

    iget-object v0, v8, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iget-object v0, v0, Landroidx/appcompat/view/menu/nl;->l:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/nl;

    iget v0, v0, Landroidx/appcompat/view/menu/nl;->g:I

    iget-object v1, v8, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iget v1, v1, Landroidx/appcompat/view/menu/nl;->f:I

    sub-int v3, v0, v1

    iget v0, v12, Landroidx/appcompat/view/menu/nl;->g:I

    iget v1, v12, Landroidx/appcompat/view/menu/nl;->f:I

    add-int v4, v0, v1

    iget v0, v13, Landroidx/appcompat/view/menu/nl;->g:I

    iget v1, v13, Landroidx/appcompat/view/menu/nl;->f:I

    sub-int v5, v0, v1

    sget-object v1, Landroidx/appcompat/view/menu/jz;->k:[I

    move-object/from16 v0, p0

    move v6, v15

    move v7, v14

    invoke-virtual/range {v0 .. v7}, Landroidx/appcompat/view/menu/jz;->q([IIIIIFI)V

    iget-object v0, v8, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    sget-object v1, Landroidx/appcompat/view/menu/jz;->k:[I

    aget v1, v1, v10

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/zl;->d(I)V

    iget-object v0, v8, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v0, v0, Landroidx/appcompat/view/menu/mf;->f:Landroidx/appcompat/view/menu/k51;

    iget-object v0, v0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    sget-object v1, Landroidx/appcompat/view/menu/jz;->k:[I

    aget v1, v1, v9

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/zl;->d(I)V

    :cond_e
    :goto_9
    return-void

    :cond_f
    iget-object v0, v8, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-boolean v1, v0, Landroidx/appcompat/view/menu/nl;->j:Z

    if-eqz v1, :cond_12

    iget-object v1, v8, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iget-boolean v2, v1, Landroidx/appcompat/view/menu/nl;->j:Z

    if-eqz v2, :cond_12

    iget-boolean v2, v12, Landroidx/appcompat/view/menu/nl;->c:Z

    if-eqz v2, :cond_11

    iget-boolean v2, v13, Landroidx/appcompat/view/menu/nl;->c:Z

    if-nez v2, :cond_10

    goto :goto_a

    :cond_10
    iget v2, v0, Landroidx/appcompat/view/menu/nl;->g:I

    iget v0, v0, Landroidx/appcompat/view/menu/nl;->f:I

    add-int/2addr v2, v0

    iget v0, v1, Landroidx/appcompat/view/menu/nl;->g:I

    iget v1, v1, Landroidx/appcompat/view/menu/nl;->f:I

    sub-int v3, v0, v1

    iget-object v0, v12, Landroidx/appcompat/view/menu/nl;->l:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/nl;

    iget v0, v0, Landroidx/appcompat/view/menu/nl;->g:I

    iget v1, v12, Landroidx/appcompat/view/menu/nl;->f:I

    add-int v4, v0, v1

    iget-object v0, v13, Landroidx/appcompat/view/menu/nl;->l:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/nl;

    iget v0, v0, Landroidx/appcompat/view/menu/nl;->g:I

    iget v1, v13, Landroidx/appcompat/view/menu/nl;->f:I

    sub-int v5, v0, v1

    sget-object v1, Landroidx/appcompat/view/menu/jz;->k:[I

    move-object/from16 v0, p0

    move v6, v15

    move v7, v14

    invoke-virtual/range {v0 .. v7}, Landroidx/appcompat/view/menu/jz;->q([IIIIIFI)V

    iget-object v0, v8, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    sget-object v1, Landroidx/appcompat/view/menu/jz;->k:[I

    aget v1, v1, v10

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/zl;->d(I)V

    iget-object v0, v8, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v0, v0, Landroidx/appcompat/view/menu/mf;->f:Landroidx/appcompat/view/menu/k51;

    iget-object v0, v0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    sget-object v1, Landroidx/appcompat/view/menu/jz;->k:[I

    aget v1, v1, v9

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/zl;->d(I)V

    goto :goto_b

    :cond_11
    :goto_a
    return-void

    :cond_12
    :goto_b
    iget-object v0, v8, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-boolean v1, v0, Landroidx/appcompat/view/menu/nl;->c:Z

    if-eqz v1, :cond_14

    iget-object v1, v8, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iget-boolean v1, v1, Landroidx/appcompat/view/menu/nl;->c:Z

    if-eqz v1, :cond_14

    iget-boolean v1, v12, Landroidx/appcompat/view/menu/nl;->c:Z

    if-eqz v1, :cond_14

    iget-boolean v1, v13, Landroidx/appcompat/view/menu/nl;->c:Z

    if-nez v1, :cond_13

    goto :goto_c

    :cond_13
    iget-object v0, v0, Landroidx/appcompat/view/menu/nl;->l:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/nl;

    iget v0, v0, Landroidx/appcompat/view/menu/nl;->g:I

    iget-object v1, v8, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget v1, v1, Landroidx/appcompat/view/menu/nl;->f:I

    add-int v2, v0, v1

    iget-object v0, v8, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iget-object v0, v0, Landroidx/appcompat/view/menu/nl;->l:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/nl;

    iget v0, v0, Landroidx/appcompat/view/menu/nl;->g:I

    iget-object v1, v8, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iget v1, v1, Landroidx/appcompat/view/menu/nl;->f:I

    sub-int v3, v0, v1

    iget-object v0, v12, Landroidx/appcompat/view/menu/nl;->l:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/nl;

    iget v0, v0, Landroidx/appcompat/view/menu/nl;->g:I

    iget v1, v12, Landroidx/appcompat/view/menu/nl;->f:I

    add-int v4, v0, v1

    iget-object v0, v13, Landroidx/appcompat/view/menu/nl;->l:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/nl;

    iget v0, v0, Landroidx/appcompat/view/menu/nl;->g:I

    iget v1, v13, Landroidx/appcompat/view/menu/nl;->f:I

    sub-int v5, v0, v1

    sget-object v1, Landroidx/appcompat/view/menu/jz;->k:[I

    move-object/from16 v0, p0

    move v6, v15

    move v7, v14

    invoke-virtual/range {v0 .. v7}, Landroidx/appcompat/view/menu/jz;->q([IIIIIFI)V

    iget-object v0, v8, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    sget-object v1, Landroidx/appcompat/view/menu/jz;->k:[I

    aget v1, v1, v10

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/zl;->d(I)V

    iget-object v0, v8, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v0, v0, Landroidx/appcompat/view/menu/mf;->f:Landroidx/appcompat/view/menu/k51;

    iget-object v0, v0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    sget-object v1, Landroidx/appcompat/view/menu/jz;->k:[I

    aget v1, v1, v9

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/zl;->d(I)V

    goto/16 :goto_f

    :cond_14
    :goto_c
    return-void

    :cond_15
    if-eqz v1, :cond_1c

    if-eqz v4, :cond_1c

    iget-object v0, v8, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-boolean v0, v0, Landroidx/appcompat/view/menu/nl;->c:Z

    if-eqz v0, :cond_1b

    iget-object v0, v8, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iget-boolean v0, v0, Landroidx/appcompat/view/menu/nl;->c:Z

    if-nez v0, :cond_16

    goto/16 :goto_d

    :cond_16
    iget-object v0, v8, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mf;->t()F

    move-result v0

    iget-object v1, v8, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-object v1, v1, Landroidx/appcompat/view/menu/nl;->l:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/nl;

    iget v1, v1, Landroidx/appcompat/view/menu/nl;->g:I

    iget-object v2, v8, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget v2, v2, Landroidx/appcompat/view/menu/nl;->f:I

    add-int/2addr v1, v2

    iget-object v2, v8, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iget-object v2, v2, Landroidx/appcompat/view/menu/nl;->l:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/nl;

    iget v2, v2, Landroidx/appcompat/view/menu/nl;->g:I

    iget-object v4, v8, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iget v4, v4, Landroidx/appcompat/view/menu/nl;->f:I

    sub-int/2addr v2, v4

    if-eq v14, v3, :cond_19

    if-eqz v14, :cond_19

    if-eq v14, v9, :cond_17

    goto/16 :goto_f

    :cond_17
    sub-int/2addr v2, v1

    invoke-virtual {v8, v2, v10}, Landroidx/appcompat/view/menu/y71;->g(II)I

    move-result v1

    int-to-float v2, v1

    div-float/2addr v2, v0

    add-float/2addr v2, v11

    float-to-int v2, v2

    invoke-virtual {v8, v2, v9}, Landroidx/appcompat/view/menu/y71;->g(II)I

    move-result v3

    if-eq v2, v3, :cond_18

    int-to-float v1, v3

    mul-float/2addr v1, v0

    add-float/2addr v1, v11

    float-to-int v1, v1

    :cond_18
    iget-object v0, v8, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/zl;->d(I)V

    iget-object v0, v8, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v0, v0, Landroidx/appcompat/view/menu/mf;->f:Landroidx/appcompat/view/menu/k51;

    iget-object v0, v0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    invoke-virtual {v0, v3}, Landroidx/appcompat/view/menu/zl;->d(I)V

    goto/16 :goto_f

    :cond_19
    sub-int/2addr v2, v1

    invoke-virtual {v8, v2, v10}, Landroidx/appcompat/view/menu/y71;->g(II)I

    move-result v1

    int-to-float v2, v1

    mul-float/2addr v2, v0

    add-float/2addr v2, v11

    float-to-int v2, v2

    invoke-virtual {v8, v2, v9}, Landroidx/appcompat/view/menu/y71;->g(II)I

    move-result v3

    if-eq v2, v3, :cond_1a

    int-to-float v1, v3

    div-float/2addr v1, v0

    add-float/2addr v1, v11

    float-to-int v1, v1

    :cond_1a
    iget-object v0, v8, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/zl;->d(I)V

    iget-object v0, v8, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v0, v0, Landroidx/appcompat/view/menu/mf;->f:Landroidx/appcompat/view/menu/k51;

    iget-object v0, v0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    invoke-virtual {v0, v3}, Landroidx/appcompat/view/menu/zl;->d(I)V

    goto/16 :goto_f

    :cond_1b
    :goto_d
    return-void

    :cond_1c
    if-eqz v2, :cond_24

    if-eqz v5, :cond_24

    iget-boolean v0, v12, Landroidx/appcompat/view/menu/nl;->c:Z

    if-eqz v0, :cond_22

    iget-boolean v0, v13, Landroidx/appcompat/view/menu/nl;->c:Z

    if-nez v0, :cond_1d

    goto :goto_e

    :cond_1d
    iget-object v0, v8, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mf;->t()F

    move-result v0

    iget-object v1, v12, Landroidx/appcompat/view/menu/nl;->l:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/nl;

    iget v1, v1, Landroidx/appcompat/view/menu/nl;->g:I

    iget v2, v12, Landroidx/appcompat/view/menu/nl;->f:I

    add-int/2addr v1, v2

    iget-object v2, v13, Landroidx/appcompat/view/menu/nl;->l:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/nl;

    iget v2, v2, Landroidx/appcompat/view/menu/nl;->g:I

    iget v4, v13, Landroidx/appcompat/view/menu/nl;->f:I

    sub-int/2addr v2, v4

    if-eq v14, v3, :cond_20

    if-eqz v14, :cond_1e

    if-eq v14, v9, :cond_20

    goto :goto_f

    :cond_1e
    sub-int/2addr v2, v1

    invoke-virtual {v8, v2, v9}, Landroidx/appcompat/view/menu/y71;->g(II)I

    move-result v1

    int-to-float v2, v1

    mul-float/2addr v2, v0

    add-float/2addr v2, v11

    float-to-int v2, v2

    invoke-virtual {v8, v2, v10}, Landroidx/appcompat/view/menu/y71;->g(II)I

    move-result v3

    if-eq v2, v3, :cond_1f

    int-to-float v1, v3

    div-float/2addr v1, v0

    add-float/2addr v1, v11

    float-to-int v1, v1

    :cond_1f
    iget-object v0, v8, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    invoke-virtual {v0, v3}, Landroidx/appcompat/view/menu/zl;->d(I)V

    iget-object v0, v8, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v0, v0, Landroidx/appcompat/view/menu/mf;->f:Landroidx/appcompat/view/menu/k51;

    iget-object v0, v0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/zl;->d(I)V

    goto :goto_f

    :cond_20
    sub-int/2addr v2, v1

    invoke-virtual {v8, v2, v9}, Landroidx/appcompat/view/menu/y71;->g(II)I

    move-result v1

    int-to-float v2, v1

    div-float/2addr v2, v0

    add-float/2addr v2, v11

    float-to-int v2, v2

    invoke-virtual {v8, v2, v10}, Landroidx/appcompat/view/menu/y71;->g(II)I

    move-result v3

    if-eq v2, v3, :cond_21

    int-to-float v1, v3

    mul-float/2addr v1, v0

    add-float/2addr v1, v11

    float-to-int v1, v1

    :cond_21
    iget-object v0, v8, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    invoke-virtual {v0, v3}, Landroidx/appcompat/view/menu/zl;->d(I)V

    iget-object v0, v8, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v0, v0, Landroidx/appcompat/view/menu/mf;->f:Landroidx/appcompat/view/menu/k51;

    iget-object v0, v0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/zl;->d(I)V

    goto :goto_f

    :cond_22
    :goto_e
    return-void

    :cond_23
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mf;->G()Landroidx/appcompat/view/menu/mf;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, v0, Landroidx/appcompat/view/menu/mf;->e:Landroidx/appcompat/view/menu/jz;

    iget-object v0, v0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iget-boolean v1, v0, Landroidx/appcompat/view/menu/nl;->j:Z

    if-eqz v1, :cond_24

    iget-object v1, v8, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget v1, v1, Landroidx/appcompat/view/menu/mf;->q:F

    iget v0, v0, Landroidx/appcompat/view/menu/nl;->g:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    add-float/2addr v0, v11

    float-to-int v0, v0

    iget-object v1, v8, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/zl;->d(I)V

    :cond_24
    :goto_f
    iget-object v0, v8, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-boolean v1, v0, Landroidx/appcompat/view/menu/nl;->c:Z

    if-eqz v1, :cond_2c

    iget-object v1, v8, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iget-boolean v2, v1, Landroidx/appcompat/view/menu/nl;->c:Z

    if-nez v2, :cond_25

    goto/16 :goto_10

    :cond_25
    iget-boolean v0, v0, Landroidx/appcompat/view/menu/nl;->j:Z

    if-eqz v0, :cond_26

    iget-boolean v0, v1, Landroidx/appcompat/view/menu/nl;->j:Z

    if-eqz v0, :cond_26

    iget-object v0, v8, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iget-boolean v0, v0, Landroidx/appcompat/view/menu/nl;->j:Z

    if-eqz v0, :cond_26

    return-void

    :cond_26
    iget-object v0, v8, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iget-boolean v0, v0, Landroidx/appcompat/view/menu/nl;->j:Z

    if-nez v0, :cond_27

    iget-object v0, v8, Landroidx/appcompat/view/menu/y71;->d:Landroidx/appcompat/view/menu/mf$b;

    sget-object v1, Landroidx/appcompat/view/menu/mf$b;->o:Landroidx/appcompat/view/menu/mf$b;

    if-ne v0, v1, :cond_27

    iget-object v0, v8, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget v1, v0, Landroidx/appcompat/view/menu/mf;->l:I

    if-nez v1, :cond_27

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mf;->V()Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, v8, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-object v0, v0, Landroidx/appcompat/view/menu/nl;->l:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/nl;

    iget-object v1, v8, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iget-object v1, v1, Landroidx/appcompat/view/menu/nl;->l:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/nl;

    iget v0, v0, Landroidx/appcompat/view/menu/nl;->g:I

    iget-object v2, v8, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget v3, v2, Landroidx/appcompat/view/menu/nl;->f:I

    add-int/2addr v0, v3

    iget v1, v1, Landroidx/appcompat/view/menu/nl;->g:I

    iget-object v3, v8, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iget v3, v3, Landroidx/appcompat/view/menu/nl;->f:I

    add-int/2addr v1, v3

    sub-int v3, v1, v0

    invoke-virtual {v2, v0}, Landroidx/appcompat/view/menu/nl;->d(I)V

    iget-object v0, v8, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/nl;->d(I)V

    iget-object v0, v8, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    invoke-virtual {v0, v3}, Landroidx/appcompat/view/menu/zl;->d(I)V

    return-void

    :cond_27
    iget-object v0, v8, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iget-boolean v0, v0, Landroidx/appcompat/view/menu/nl;->j:Z

    if-nez v0, :cond_29

    iget-object v0, v8, Landroidx/appcompat/view/menu/y71;->d:Landroidx/appcompat/view/menu/mf$b;

    sget-object v1, Landroidx/appcompat/view/menu/mf$b;->o:Landroidx/appcompat/view/menu/mf$b;

    if-ne v0, v1, :cond_29

    iget v0, v8, Landroidx/appcompat/view/menu/y71;->a:I

    if-ne v0, v9, :cond_29

    iget-object v0, v8, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-object v0, v0, Landroidx/appcompat/view/menu/nl;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_29

    iget-object v0, v8, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iget-object v0, v0, Landroidx/appcompat/view/menu/nl;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_29

    iget-object v0, v8, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-object v0, v0, Landroidx/appcompat/view/menu/nl;->l:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/nl;

    iget-object v1, v8, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iget-object v1, v1, Landroidx/appcompat/view/menu/nl;->l:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/nl;

    iget v0, v0, Landroidx/appcompat/view/menu/nl;->g:I

    iget-object v2, v8, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget v2, v2, Landroidx/appcompat/view/menu/nl;->f:I

    add-int/2addr v0, v2

    iget v1, v1, Landroidx/appcompat/view/menu/nl;->g:I

    iget-object v2, v8, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iget v2, v2, Landroidx/appcompat/view/menu/nl;->f:I

    add-int/2addr v1, v2

    sub-int/2addr v1, v0

    iget-object v0, v8, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iget v0, v0, Landroidx/appcompat/view/menu/zl;->m:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, v8, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget v2, v1, Landroidx/appcompat/view/menu/mf;->p:I

    iget v1, v1, Landroidx/appcompat/view/menu/mf;->o:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-lez v2, :cond_28

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_28
    iget-object v1, v8, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/zl;->d(I)V

    :cond_29
    iget-object v0, v8, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iget-boolean v0, v0, Landroidx/appcompat/view/menu/nl;->j:Z

    if-nez v0, :cond_2a

    return-void

    :cond_2a
    iget-object v0, v8, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-object v0, v0, Landroidx/appcompat/view/menu/nl;->l:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/nl;

    iget-object v1, v8, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iget-object v1, v1, Landroidx/appcompat/view/menu/nl;->l:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/nl;

    iget v2, v0, Landroidx/appcompat/view/menu/nl;->g:I

    iget-object v3, v8, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget v3, v3, Landroidx/appcompat/view/menu/nl;->f:I

    add-int/2addr v2, v3

    iget v3, v1, Landroidx/appcompat/view/menu/nl;->g:I

    iget-object v4, v8, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iget v4, v4, Landroidx/appcompat/view/menu/nl;->f:I

    add-int/2addr v3, v4

    iget-object v4, v8, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/mf;->w()F

    move-result v4

    if-ne v0, v1, :cond_2b

    iget v2, v0, Landroidx/appcompat/view/menu/nl;->g:I

    iget v3, v1, Landroidx/appcompat/view/menu/nl;->g:I

    move v4, v11

    :cond_2b
    sub-int/2addr v3, v2

    iget-object v0, v8, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iget v0, v0, Landroidx/appcompat/view/menu/nl;->g:I

    sub-int/2addr v3, v0

    iget-object v0, v8, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    int-to-float v1, v2

    add-float/2addr v1, v11

    int-to-float v2, v3

    mul-float/2addr v2, v4

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/nl;->d(I)V

    iget-object v0, v8, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iget-object v1, v8, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget v1, v1, Landroidx/appcompat/view/menu/nl;->g:I

    iget-object v2, v8, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iget v2, v2, Landroidx/appcompat/view/menu/nl;->g:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/nl;->d(I)V

    :cond_2c
    :goto_10
    return-void
.end method

.method public d()V
    .locals 7

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-boolean v1, v0, Landroidx/appcompat/view/menu/mf;->a:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mf;->P()I

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/zl;->d(I)V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iget-boolean v0, v0, Landroidx/appcompat/view/menu/nl;->j:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mf;->y()Landroidx/appcompat/view/menu/mf$b;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/y71;->d:Landroidx/appcompat/view/menu/mf$b;

    sget-object v1, Landroidx/appcompat/view/menu/mf$b;->o:Landroidx/appcompat/view/menu/mf$b;

    if-eq v0, v1, :cond_7

    sget-object v1, Landroidx/appcompat/view/menu/mf$b;->p:Landroidx/appcompat/view/menu/mf$b;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mf;->G()Landroidx/appcompat/view/menu/mf;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mf;->y()Landroidx/appcompat/view/menu/mf$b;

    move-result-object v2

    sget-object v3, Landroidx/appcompat/view/menu/mf$b;->m:Landroidx/appcompat/view/menu/mf$b;

    if-eq v2, v3, :cond_2

    :cond_1
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mf;->y()Landroidx/appcompat/view/menu/mf$b;

    move-result-object v2

    if-ne v2, v1, :cond_3

    :cond_2
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mf;->P()I

    move-result v1

    iget-object v2, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v2, v2, Landroidx/appcompat/view/menu/mf;->B:Landroidx/appcompat/view/menu/kf;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/kf;->c()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v2, v2, Landroidx/appcompat/view/menu/mf;->D:Landroidx/appcompat/view/menu/kf;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/kf;->c()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-object v3, v0, Landroidx/appcompat/view/menu/mf;->e:Landroidx/appcompat/view/menu/jz;

    iget-object v3, v3, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-object v4, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v4, v4, Landroidx/appcompat/view/menu/mf;->B:Landroidx/appcompat/view/menu/kf;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/kf;->c()I

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Landroidx/appcompat/view/menu/y71;->b(Landroidx/appcompat/view/menu/nl;Landroidx/appcompat/view/menu/nl;I)V

    iget-object v2, p0, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iget-object v0, v0, Landroidx/appcompat/view/menu/mf;->e:Landroidx/appcompat/view/menu/jz;

    iget-object v0, v0, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iget-object v3, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v3, v3, Landroidx/appcompat/view/menu/mf;->D:Landroidx/appcompat/view/menu/kf;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/kf;->c()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {p0, v2, v0, v3}, Landroidx/appcompat/view/menu/y71;->b(Landroidx/appcompat/view/menu/nl;Landroidx/appcompat/view/menu/nl;I)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/zl;->d(I)V

    return-void

    :cond_3
    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->d:Landroidx/appcompat/view/menu/mf$b;

    sget-object v1, Landroidx/appcompat/view/menu/mf$b;->m:Landroidx/appcompat/view/menu/mf$b;

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/mf;->P()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/zl;->d(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->d:Landroidx/appcompat/view/menu/mf$b;

    sget-object v1, Landroidx/appcompat/view/menu/mf$b;->p:Landroidx/appcompat/view/menu/mf$b;

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mf;->G()Landroidx/appcompat/view/menu/mf;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mf;->y()Landroidx/appcompat/view/menu/mf$b;

    move-result-object v2

    sget-object v3, Landroidx/appcompat/view/menu/mf$b;->m:Landroidx/appcompat/view/menu/mf$b;

    if-eq v2, v3, :cond_6

    :cond_5
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mf;->y()Landroidx/appcompat/view/menu/mf$b;

    move-result-object v2

    if-ne v2, v1, :cond_7

    :cond_6
    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-object v2, v0, Landroidx/appcompat/view/menu/mf;->e:Landroidx/appcompat/view/menu/jz;

    iget-object v2, v2, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-object v3, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v3, v3, Landroidx/appcompat/view/menu/mf;->B:Landroidx/appcompat/view/menu/kf;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/kf;->c()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Landroidx/appcompat/view/menu/y71;->b(Landroidx/appcompat/view/menu/nl;Landroidx/appcompat/view/menu/nl;I)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iget-object v0, v0, Landroidx/appcompat/view/menu/mf;->e:Landroidx/appcompat/view/menu/jz;

    iget-object v0, v0, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iget-object v2, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v2, v2, Landroidx/appcompat/view/menu/mf;->D:Landroidx/appcompat/view/menu/kf;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/kf;->c()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0, v1, v0, v2}, Landroidx/appcompat/view/menu/y71;->b(Landroidx/appcompat/view/menu/nl;Landroidx/appcompat/view/menu/nl;I)V

    return-void

    :cond_7
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iget-boolean v1, v0, Landroidx/appcompat/view/menu/nl;->j:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_e

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-boolean v4, v1, Landroidx/appcompat/view/menu/mf;->a:Z

    if-eqz v4, :cond_e

    iget-object v0, v1, Landroidx/appcompat/view/menu/mf;->J:[Landroidx/appcompat/view/menu/kf;

    aget-object v4, v0, v2

    iget-object v5, v4, Landroidx/appcompat/view/menu/kf;->d:Landroidx/appcompat/view/menu/kf;

    if-eqz v5, :cond_b

    aget-object v6, v0, v3

    iget-object v6, v6, Landroidx/appcompat/view/menu/kf;->d:Landroidx/appcompat/view/menu/kf;

    if-eqz v6, :cond_b

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/mf;->V()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v1, v1, Landroidx/appcompat/view/menu/mf;->J:[Landroidx/appcompat/view/menu/kf;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/kf;->c()I

    move-result v1

    iput v1, v0, Landroidx/appcompat/view/menu/nl;->f:I

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v1, v1, Landroidx/appcompat/view/menu/mf;->J:[Landroidx/appcompat/view/menu/kf;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/kf;->c()I

    move-result v1

    neg-int v1, v1

    iput v1, v0, Landroidx/appcompat/view/menu/nl;->f:I

    goto/16 :goto_2

    :cond_8
    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v0, v0, Landroidx/appcompat/view/menu/mf;->J:[Landroidx/appcompat/view/menu/kf;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/y71;->h(Landroidx/appcompat/view/menu/kf;)Landroidx/appcompat/view/menu/nl;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-object v4, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v4, v4, Landroidx/appcompat/view/menu/mf;->J:[Landroidx/appcompat/view/menu/kf;

    aget-object v2, v4, v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/kf;->c()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Landroidx/appcompat/view/menu/y71;->b(Landroidx/appcompat/view/menu/nl;Landroidx/appcompat/view/menu/nl;I)V

    :cond_9
    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v0, v0, Landroidx/appcompat/view/menu/mf;->J:[Landroidx/appcompat/view/menu/kf;

    aget-object v0, v0, v3

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/y71;->h(Landroidx/appcompat/view/menu/kf;)Landroidx/appcompat/view/menu/nl;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iget-object v2, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v2, v2, Landroidx/appcompat/view/menu/mf;->J:[Landroidx/appcompat/view/menu/kf;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/kf;->c()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0, v1, v0, v2}, Landroidx/appcompat/view/menu/y71;->b(Landroidx/appcompat/view/menu/nl;Landroidx/appcompat/view/menu/nl;I)V

    :cond_a
    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iput-boolean v3, v0, Landroidx/appcompat/view/menu/nl;->b:Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iput-boolean v3, v0, Landroidx/appcompat/view/menu/nl;->b:Z

    goto/16 :goto_2

    :cond_b
    if-eqz v5, :cond_c

    invoke-virtual {p0, v4}, Landroidx/appcompat/view/menu/y71;->h(Landroidx/appcompat/view/menu/kf;)Landroidx/appcompat/view/menu/nl;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-object v3, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v3, v3, Landroidx/appcompat/view/menu/mf;->J:[Landroidx/appcompat/view/menu/kf;

    aget-object v2, v3, v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/kf;->c()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Landroidx/appcompat/view/menu/y71;->b(Landroidx/appcompat/view/menu/nl;Landroidx/appcompat/view/menu/nl;I)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-object v2, p0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iget v2, v2, Landroidx/appcompat/view/menu/nl;->g:I

    invoke-virtual {p0, v0, v1, v2}, Landroidx/appcompat/view/menu/y71;->b(Landroidx/appcompat/view/menu/nl;Landroidx/appcompat/view/menu/nl;I)V

    goto/16 :goto_2

    :cond_c
    aget-object v0, v0, v3

    iget-object v2, v0, Landroidx/appcompat/view/menu/kf;->d:Landroidx/appcompat/view/menu/kf;

    if-eqz v2, :cond_d

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/y71;->h(Landroidx/appcompat/view/menu/kf;)Landroidx/appcompat/view/menu/nl;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iget-object v2, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v2, v2, Landroidx/appcompat/view/menu/mf;->J:[Landroidx/appcompat/view/menu/kf;

    aget-object v2, v2, v3

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

    goto/16 :goto_2

    :cond_d
    instance-of v0, v1, Landroidx/appcompat/view/menu/dz;

    if-nez v0, :cond_1a

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/mf;->G()Landroidx/appcompat/view/menu/mf;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    sget-object v1, Landroidx/appcompat/view/menu/kf$b;->s:Landroidx/appcompat/view/menu/kf$b;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/mf;->m(Landroidx/appcompat/view/menu/kf$b;)Landroidx/appcompat/view/menu/kf;

    move-result-object v0

    iget-object v0, v0, Landroidx/appcompat/view/menu/kf;->d:Landroidx/appcompat/view/menu/kf;

    if-nez v0, :cond_1a

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mf;->G()Landroidx/appcompat/view/menu/mf;

    move-result-object v0

    iget-object v0, v0, Landroidx/appcompat/view/menu/mf;->e:Landroidx/appcompat/view/menu/jz;

    iget-object v0, v0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-object v2, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/mf;->Q()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Landroidx/appcompat/view/menu/y71;->b(Landroidx/appcompat/view/menu/nl;Landroidx/appcompat/view/menu/nl;I)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-object v2, p0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iget v2, v2, Landroidx/appcompat/view/menu/nl;->g:I

    invoke-virtual {p0, v0, v1, v2}, Landroidx/appcompat/view/menu/y71;->b(Landroidx/appcompat/view/menu/nl;Landroidx/appcompat/view/menu/nl;I)V

    goto/16 :goto_2

    :cond_e
    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->d:Landroidx/appcompat/view/menu/mf$b;

    sget-object v4, Landroidx/appcompat/view/menu/mf$b;->o:Landroidx/appcompat/view/menu/mf$b;

    if-ne v1, v4, :cond_15

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget v4, v1, Landroidx/appcompat/view/menu/mf;->l:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_13

    const/4 v5, 0x3

    if-eq v4, v5, :cond_f

    goto/16 :goto_1

    :cond_f
    iget v4, v1, Landroidx/appcompat/view/menu/mf;->m:I

    if-ne v4, v5, :cond_12

    iget-object v4, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iput-object p0, v4, Landroidx/appcompat/view/menu/nl;->a:Landroidx/appcompat/view/menu/jl;

    iget-object v4, p0, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iput-object p0, v4, Landroidx/appcompat/view/menu/nl;->a:Landroidx/appcompat/view/menu/jl;

    iget-object v4, v1, Landroidx/appcompat/view/menu/mf;->f:Landroidx/appcompat/view/menu/k51;

    iget-object v5, v4, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iput-object p0, v5, Landroidx/appcompat/view/menu/nl;->a:Landroidx/appcompat/view/menu/jl;

    iget-object v4, v4, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iput-object p0, v4, Landroidx/appcompat/view/menu/nl;->a:Landroidx/appcompat/view/menu/jl;

    iput-object p0, v0, Landroidx/appcompat/view/menu/nl;->a:Landroidx/appcompat/view/menu/jl;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/mf;->X()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iget-object v0, v0, Landroidx/appcompat/view/menu/nl;->l:Ljava/util/List;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v1, v1, Landroidx/appcompat/view/menu/mf;->f:Landroidx/appcompat/view/menu/k51;

    iget-object v1, v1, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v0, v0, Landroidx/appcompat/view/menu/mf;->f:Landroidx/appcompat/view/menu/k51;

    iget-object v0, v0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iget-object v0, v0, Landroidx/appcompat/view/menu/nl;->k:Ljava/util/List;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v0, v0, Landroidx/appcompat/view/menu/mf;->f:Landroidx/appcompat/view/menu/k51;

    iget-object v1, v0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iput-object p0, v1, Landroidx/appcompat/view/menu/nl;->a:Landroidx/appcompat/view/menu/jl;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iget-object v1, v1, Landroidx/appcompat/view/menu/nl;->l:Ljava/util/List;

    iget-object v0, v0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iget-object v0, v0, Landroidx/appcompat/view/menu/nl;->l:Ljava/util/List;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v1, v1, Landroidx/appcompat/view/menu/mf;->f:Landroidx/appcompat/view/menu/k51;

    iget-object v1, v1, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v0, v0, Landroidx/appcompat/view/menu/mf;->f:Landroidx/appcompat/view/menu/k51;

    iget-object v0, v0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-object v0, v0, Landroidx/appcompat/view/menu/nl;->k:Ljava/util/List;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v0, v0, Landroidx/appcompat/view/menu/mf;->f:Landroidx/appcompat/view/menu/k51;

    iget-object v0, v0, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iget-object v0, v0, Landroidx/appcompat/view/menu/nl;->k:Ljava/util/List;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_10
    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mf;->V()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v0, v0, Landroidx/appcompat/view/menu/mf;->f:Landroidx/appcompat/view/menu/k51;

    iget-object v0, v0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iget-object v0, v0, Landroidx/appcompat/view/menu/nl;->l:Ljava/util/List;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iget-object v0, v0, Landroidx/appcompat/view/menu/nl;->k:Ljava/util/List;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v1, v1, Landroidx/appcompat/view/menu/mf;->f:Landroidx/appcompat/view/menu/k51;

    iget-object v1, v1, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_11
    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v0, v0, Landroidx/appcompat/view/menu/mf;->f:Landroidx/appcompat/view/menu/k51;

    iget-object v0, v0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iget-object v0, v0, Landroidx/appcompat/view/menu/nl;->l:Ljava/util/List;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_12
    iget-object v1, v1, Landroidx/appcompat/view/menu/mf;->f:Landroidx/appcompat/view/menu/k51;

    iget-object v1, v1, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iget-object v0, v0, Landroidx/appcompat/view/menu/nl;->l:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Landroidx/appcompat/view/menu/nl;->k:Ljava/util/List;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v0, v0, Landroidx/appcompat/view/menu/mf;->f:Landroidx/appcompat/view/menu/k51;

    iget-object v0, v0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-object v0, v0, Landroidx/appcompat/view/menu/nl;->k:Ljava/util/List;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v0, v0, Landroidx/appcompat/view/menu/mf;->f:Landroidx/appcompat/view/menu/k51;

    iget-object v0, v0, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iget-object v0, v0, Landroidx/appcompat/view/menu/nl;->k:Ljava/util/List;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iput-boolean v3, v0, Landroidx/appcompat/view/menu/nl;->b:Z

    iget-object v0, v0, Landroidx/appcompat/view/menu/nl;->k:Ljava/util/List;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iget-object v0, v0, Landroidx/appcompat/view/menu/nl;->k:Ljava/util/List;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-object v0, v0, Landroidx/appcompat/view/menu/nl;->l:Ljava/util/List;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iget-object v0, v0, Landroidx/appcompat/view/menu/nl;->l:Ljava/util/List;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_13
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/mf;->G()Landroidx/appcompat/view/menu/mf;

    move-result-object v0

    if-nez v0, :cond_14

    goto :goto_1

    :cond_14
    iget-object v0, v0, Landroidx/appcompat/view/menu/mf;->f:Landroidx/appcompat/view/menu/k51;

    iget-object v0, v0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iget-object v1, v1, Landroidx/appcompat/view/menu/nl;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Landroidx/appcompat/view/menu/nl;->k:Ljava/util/List;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iput-boolean v3, v0, Landroidx/appcompat/view/menu/nl;->b:Z

    iget-object v0, v0, Landroidx/appcompat/view/menu/nl;->k:Ljava/util/List;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iget-object v0, v0, Landroidx/appcompat/view/menu/nl;->k:Ljava/util/List;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15
    :goto_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v1, v0, Landroidx/appcompat/view/menu/mf;->J:[Landroidx/appcompat/view/menu/kf;

    aget-object v4, v1, v2

    iget-object v5, v4, Landroidx/appcompat/view/menu/kf;->d:Landroidx/appcompat/view/menu/kf;

    if-eqz v5, :cond_17

    aget-object v6, v1, v3

    iget-object v6, v6, Landroidx/appcompat/view/menu/kf;->d:Landroidx/appcompat/view/menu/kf;

    if-eqz v6, :cond_17

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mf;->V()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v1, v1, Landroidx/appcompat/view/menu/mf;->J:[Landroidx/appcompat/view/menu/kf;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/kf;->c()I

    move-result v1

    iput v1, v0, Landroidx/appcompat/view/menu/nl;->f:I

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v1, v1, Landroidx/appcompat/view/menu/mf;->J:[Landroidx/appcompat/view/menu/kf;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/kf;->c()I

    move-result v1

    neg-int v1, v1

    iput v1, v0, Landroidx/appcompat/view/menu/nl;->f:I

    goto/16 :goto_2

    :cond_16
    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v0, v0, Landroidx/appcompat/view/menu/mf;->J:[Landroidx/appcompat/view/menu/kf;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/y71;->h(Landroidx/appcompat/view/menu/kf;)Landroidx/appcompat/view/menu/nl;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v1, v1, Landroidx/appcompat/view/menu/mf;->J:[Landroidx/appcompat/view/menu/kf;

    aget-object v1, v1, v3

    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/y71;->h(Landroidx/appcompat/view/menu/kf;)Landroidx/appcompat/view/menu/nl;

    move-result-object v1

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/nl;->b(Landroidx/appcompat/view/menu/jl;)V

    invoke-virtual {v1, p0}, Landroidx/appcompat/view/menu/nl;->b(Landroidx/appcompat/view/menu/jl;)V

    sget-object v0, Landroidx/appcompat/view/menu/y71$b;->p:Landroidx/appcompat/view/menu/y71$b;

    iput-object v0, p0, Landroidx/appcompat/view/menu/y71;->j:Landroidx/appcompat/view/menu/y71$b;

    goto :goto_2

    :cond_17
    if-eqz v5, :cond_18

    invoke-virtual {p0, v4}, Landroidx/appcompat/view/menu/y71;->h(Landroidx/appcompat/view/menu/kf;)Landroidx/appcompat/view/menu/nl;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-object v4, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v4, v4, Landroidx/appcompat/view/menu/mf;->J:[Landroidx/appcompat/view/menu/kf;

    aget-object v2, v4, v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/kf;->c()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Landroidx/appcompat/view/menu/y71;->b(Landroidx/appcompat/view/menu/nl;Landroidx/appcompat/view/menu/nl;I)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-object v2, p0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    invoke-virtual {p0, v0, v1, v3, v2}, Landroidx/appcompat/view/menu/y71;->c(Landroidx/appcompat/view/menu/nl;Landroidx/appcompat/view/menu/nl;ILandroidx/appcompat/view/menu/zl;)V

    goto :goto_2

    :cond_18
    aget-object v1, v1, v3

    iget-object v2, v1, Landroidx/appcompat/view/menu/kf;->d:Landroidx/appcompat/view/menu/kf;

    if-eqz v2, :cond_19

    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/y71;->h(Landroidx/appcompat/view/menu/kf;)Landroidx/appcompat/view/menu/nl;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iget-object v2, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v2, v2, Landroidx/appcompat/view/menu/mf;->J:[Landroidx/appcompat/view/menu/kf;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/kf;->c()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0, v1, v0, v2}, Landroidx/appcompat/view/menu/y71;->b(Landroidx/appcompat/view/menu/nl;Landroidx/appcompat/view/menu/nl;I)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    const/4 v2, -0x1

    iget-object v3, p0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/appcompat/view/menu/y71;->c(Landroidx/appcompat/view/menu/nl;Landroidx/appcompat/view/menu/nl;ILandroidx/appcompat/view/menu/zl;)V

    goto :goto_2

    :cond_19
    instance-of v1, v0, Landroidx/appcompat/view/menu/dz;

    if-nez v1, :cond_1a

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mf;->G()Landroidx/appcompat/view/menu/mf;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mf;->G()Landroidx/appcompat/view/menu/mf;

    move-result-object v0

    iget-object v0, v0, Landroidx/appcompat/view/menu/mf;->e:Landroidx/appcompat/view/menu/jz;

    iget-object v0, v0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-object v2, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/mf;->Q()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Landroidx/appcompat/view/menu/y71;->b(Landroidx/appcompat/view/menu/nl;Landroidx/appcompat/view/menu/nl;I)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-object v2, p0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    invoke-virtual {p0, v0, v1, v3, v2}, Landroidx/appcompat/view/menu/y71;->c(Landroidx/appcompat/view/menu/nl;Landroidx/appcompat/view/menu/nl;ILandroidx/appcompat/view/menu/zl;)V

    :cond_1a
    :goto_2
    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-boolean v1, v0, Landroidx/appcompat/view/menu/nl;->j:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget v0, v0, Landroidx/appcompat/view/menu/nl;->g:I

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/mf;->F0(I)V

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

    iget v0, v0, Landroidx/appcompat/view/menu/mf;->l:I

    if-nez v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    return v2
.end method

.method public final q([IIIIIFI)V
    .locals 2

    sub-int/2addr p3, p2

    sub-int/2addr p5, p4

    const/4 p2, -0x1

    const/4 p4, 0x0

    const/high16 v0, 0x3f000000    # 0.5f

    const/4 v1, 0x1

    if-eq p7, p2, :cond_2

    if-eqz p7, :cond_1

    if-eq p7, v1, :cond_0

    goto :goto_0

    :cond_0
    int-to-float p2, p3

    mul-float/2addr p2, p6

    add-float/2addr p2, v0

    float-to-int p2, p2

    aput p3, p1, p4

    aput p2, p1, v1

    goto :goto_0

    :cond_1
    int-to-float p2, p5

    mul-float/2addr p2, p6

    add-float/2addr p2, v0

    float-to-int p2, p2

    aput p2, p1, p4

    aput p5, p1, v1

    goto :goto_0

    :cond_2
    int-to-float p2, p5

    mul-float/2addr p2, p6

    add-float/2addr p2, v0

    float-to-int p2, p2

    int-to-float p7, p3

    div-float/2addr p7, p6

    add-float/2addr p7, v0

    float-to-int p6, p7

    if-gt p2, p3, :cond_3

    aput p2, p1, p4

    aput p5, p1, v1

    goto :goto_0

    :cond_3
    if-gt p6, p5, :cond_4

    aput p3, p1, p4

    aput p6, p1, v1

    :cond_4
    :goto_0
    return-void
.end method

.method public r()V
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

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iput-boolean v0, v1, Landroidx/appcompat/view/menu/nl;->j:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HorizontalRun "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/mf;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
