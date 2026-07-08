.class public Landroidx/appcompat/view/menu/ml;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroidx/appcompat/view/menu/nf;

.field public b:Z

.field public c:Z

.field public d:Landroidx/appcompat/view/menu/nf;

.field public e:Ljava/util/ArrayList;

.field public f:Ljava/util/ArrayList;

.field public g:Landroidx/appcompat/view/menu/e8$b;

.field public h:Landroidx/appcompat/view/menu/e8$a;

.field public i:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/nf;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/ml;->b:Z

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/ml;->c:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/ml;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/ml;->f:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/view/menu/ml;->g:Landroidx/appcompat/view/menu/e8$b;

    new-instance v0, Landroidx/appcompat/view/menu/e8$a;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/e8$a;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/ml;->h:Landroidx/appcompat/view/menu/e8$a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/ml;->i:Ljava/util/ArrayList;

    iput-object p1, p0, Landroidx/appcompat/view/menu/ml;->a:Landroidx/appcompat/view/menu/nf;

    iput-object p1, p0, Landroidx/appcompat/view/menu/ml;->d:Landroidx/appcompat/view/menu/nf;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/appcompat/view/menu/nl;IILandroidx/appcompat/view/menu/nl;Ljava/util/ArrayList;Landroidx/appcompat/view/menu/zp0;)V
    .locals 8

    iget-object p1, p1, Landroidx/appcompat/view/menu/nl;->d:Landroidx/appcompat/view/menu/y71;

    iget-object v0, p1, Landroidx/appcompat/view/menu/y71;->c:Landroidx/appcompat/view/menu/zp0;

    if-nez v0, :cond_c

    iget-object v0, p0, Landroidx/appcompat/view/menu/ml;->a:Landroidx/appcompat/view/menu/nf;

    iget-object v1, v0, Landroidx/appcompat/view/menu/mf;->e:Landroidx/appcompat/view/menu/jz;

    if-eq p1, v1, :cond_c

    iget-object v0, v0, Landroidx/appcompat/view/menu/mf;->f:Landroidx/appcompat/view/menu/k51;

    if-ne p1, v0, :cond_0

    goto/16 :goto_6

    :cond_0
    if-nez p6, :cond_1

    new-instance p6, Landroidx/appcompat/view/menu/zp0;

    invoke-direct {p6, p1, p3}, Landroidx/appcompat/view/menu/zp0;-><init>(Landroidx/appcompat/view/menu/y71;I)V

    invoke-virtual {p5, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iput-object p6, p1, Landroidx/appcompat/view/menu/y71;->c:Landroidx/appcompat/view/menu/zp0;

    invoke-virtual {p6, p1}, Landroidx/appcompat/view/menu/zp0;->a(Landroidx/appcompat/view/menu/y71;)V

    iget-object p3, p1, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-object p3, p3, Landroidx/appcompat/view/menu/nl;->k:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_2
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/jl;

    instance-of v1, v0, Landroidx/appcompat/view/menu/nl;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Landroidx/appcompat/view/menu/nl;

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/view/menu/ml;->a(Landroidx/appcompat/view/menu/nl;IILandroidx/appcompat/view/menu/nl;Ljava/util/ArrayList;Landroidx/appcompat/view/menu/zp0;)V

    goto :goto_0

    :cond_3
    iget-object p3, p1, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iget-object p3, p3, Landroidx/appcompat/view/menu/nl;->k:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_4
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/jl;

    instance-of v1, v0, Landroidx/appcompat/view/menu/nl;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Landroidx/appcompat/view/menu/nl;

    const/4 v3, 0x1

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/view/menu/ml;->a(Landroidx/appcompat/view/menu/nl;IILandroidx/appcompat/view/menu/nl;Ljava/util/ArrayList;Landroidx/appcompat/view/menu/zp0;)V

    goto :goto_1

    :cond_5
    const/4 p3, 0x1

    if-ne p2, p3, :cond_7

    instance-of v0, p1, Landroidx/appcompat/view/menu/k51;

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, Landroidx/appcompat/view/menu/k51;

    iget-object v0, v0, Landroidx/appcompat/view/menu/k51;->k:Landroidx/appcompat/view/menu/nl;

    iget-object v0, v0, Landroidx/appcompat/view/menu/nl;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/jl;

    instance-of v1, v0, Landroidx/appcompat/view/menu/nl;

    if-eqz v1, :cond_6

    move-object v1, v0

    check-cast v1, Landroidx/appcompat/view/menu/nl;

    const/4 v3, 0x2

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/view/menu/ml;->a(Landroidx/appcompat/view/menu/nl;IILandroidx/appcompat/view/menu/nl;Ljava/util/ArrayList;Landroidx/appcompat/view/menu/zp0;)V

    goto :goto_2

    :cond_7
    iget-object v0, p1, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-object v0, v0, Landroidx/appcompat/view/menu/nl;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/appcompat/view/menu/nl;

    if-ne v1, p4, :cond_8

    iput-boolean p3, p6, Landroidx/appcompat/view/menu/zp0;->b:Z

    :cond_8
    const/4 v3, 0x0

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/view/menu/ml;->a(Landroidx/appcompat/view/menu/nl;IILandroidx/appcompat/view/menu/nl;Ljava/util/ArrayList;Landroidx/appcompat/view/menu/zp0;)V

    goto :goto_3

    :cond_9
    iget-object v0, p1, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iget-object v0, v0, Landroidx/appcompat/view/menu/nl;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/appcompat/view/menu/nl;

    if-ne v1, p4, :cond_a

    iput-boolean p3, p6, Landroidx/appcompat/view/menu/zp0;->b:Z

    :cond_a
    const/4 v3, 0x1

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/view/menu/ml;->a(Landroidx/appcompat/view/menu/nl;IILandroidx/appcompat/view/menu/nl;Ljava/util/ArrayList;Landroidx/appcompat/view/menu/zp0;)V

    goto :goto_4

    :cond_b
    if-ne p2, p3, :cond_c

    instance-of p3, p1, Landroidx/appcompat/view/menu/k51;

    if-eqz p3, :cond_c

    check-cast p1, Landroidx/appcompat/view/menu/k51;

    iget-object p1, p1, Landroidx/appcompat/view/menu/k51;->k:Landroidx/appcompat/view/menu/nl;

    iget-object p1, p1, Landroidx/appcompat/view/menu/nl;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object v1, p3

    check-cast v1, Landroidx/appcompat/view/menu/nl;

    const/4 v3, 0x2

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/view/menu/ml;->a(Landroidx/appcompat/view/menu/nl;IILandroidx/appcompat/view/menu/nl;Ljava/util/ArrayList;Landroidx/appcompat/view/menu/zp0;)V

    goto :goto_5

    :cond_c
    :goto_6
    return-void
.end method

.method public final b(Landroidx/appcompat/view/menu/nf;)Z
    .locals 16

    move-object/from16 v0, p1

    iget-object v1, v0, Landroidx/appcompat/view/menu/x71;->w0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/mf;

    iget-object v4, v2, Landroidx/appcompat/view/menu/mf;->M:[Landroidx/appcompat/view/menu/mf$b;

    aget-object v5, v4, v3

    const/4 v10, 0x1

    aget-object v4, v4, v10

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/mf;->O()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_1

    iput-boolean v10, v2, Landroidx/appcompat/view/menu/mf;->a:Z

    goto :goto_0

    :cond_1
    iget v6, v2, Landroidx/appcompat/view/menu/mf;->q:F

    const/high16 v11, 0x3f800000    # 1.0f

    cmpg-float v6, v6, v11

    const/4 v7, 0x2

    if-gez v6, :cond_2

    sget-object v6, Landroidx/appcompat/view/menu/mf$b;->o:Landroidx/appcompat/view/menu/mf$b;

    if-ne v5, v6, :cond_2

    iput v7, v2, Landroidx/appcompat/view/menu/mf;->l:I

    :cond_2
    iget v6, v2, Landroidx/appcompat/view/menu/mf;->t:F

    cmpg-float v6, v6, v11

    if-gez v6, :cond_3

    sget-object v6, Landroidx/appcompat/view/menu/mf$b;->o:Landroidx/appcompat/view/menu/mf$b;

    if-ne v4, v6, :cond_3

    iput v7, v2, Landroidx/appcompat/view/menu/mf;->m:I

    :cond_3
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/mf;->t()F

    move-result v6

    const/4 v8, 0x0

    cmpl-float v6, v6, v8

    const/4 v8, 0x3

    if-lez v6, :cond_9

    sget-object v6, Landroidx/appcompat/view/menu/mf$b;->o:Landroidx/appcompat/view/menu/mf$b;

    if-ne v5, v6, :cond_5

    sget-object v9, Landroidx/appcompat/view/menu/mf$b;->n:Landroidx/appcompat/view/menu/mf$b;

    if-eq v4, v9, :cond_4

    sget-object v9, Landroidx/appcompat/view/menu/mf$b;->m:Landroidx/appcompat/view/menu/mf$b;

    if-ne v4, v9, :cond_5

    :cond_4
    iput v8, v2, Landroidx/appcompat/view/menu/mf;->l:I

    goto :goto_1

    :cond_5
    if-ne v4, v6, :cond_7

    sget-object v9, Landroidx/appcompat/view/menu/mf$b;->n:Landroidx/appcompat/view/menu/mf$b;

    if-eq v5, v9, :cond_6

    sget-object v9, Landroidx/appcompat/view/menu/mf$b;->m:Landroidx/appcompat/view/menu/mf$b;

    if-ne v5, v9, :cond_7

    :cond_6
    iput v8, v2, Landroidx/appcompat/view/menu/mf;->m:I

    goto :goto_1

    :cond_7
    if-ne v5, v6, :cond_9

    if-ne v4, v6, :cond_9

    iget v6, v2, Landroidx/appcompat/view/menu/mf;->l:I

    if-nez v6, :cond_8

    iput v8, v2, Landroidx/appcompat/view/menu/mf;->l:I

    :cond_8
    iget v6, v2, Landroidx/appcompat/view/menu/mf;->m:I

    if-nez v6, :cond_9

    iput v8, v2, Landroidx/appcompat/view/menu/mf;->m:I

    :cond_9
    :goto_1
    sget-object v6, Landroidx/appcompat/view/menu/mf$b;->o:Landroidx/appcompat/view/menu/mf$b;

    if-ne v5, v6, :cond_b

    iget v9, v2, Landroidx/appcompat/view/menu/mf;->l:I

    if-ne v9, v10, :cond_b

    iget-object v9, v2, Landroidx/appcompat/view/menu/mf;->B:Landroidx/appcompat/view/menu/kf;

    iget-object v9, v9, Landroidx/appcompat/view/menu/kf;->d:Landroidx/appcompat/view/menu/kf;

    if-eqz v9, :cond_a

    iget-object v9, v2, Landroidx/appcompat/view/menu/mf;->D:Landroidx/appcompat/view/menu/kf;

    iget-object v9, v9, Landroidx/appcompat/view/menu/kf;->d:Landroidx/appcompat/view/menu/kf;

    if-nez v9, :cond_b

    :cond_a
    sget-object v5, Landroidx/appcompat/view/menu/mf$b;->n:Landroidx/appcompat/view/menu/mf$b;

    :cond_b
    move-object v9, v5

    if-ne v4, v6, :cond_d

    iget v5, v2, Landroidx/appcompat/view/menu/mf;->m:I

    if-ne v5, v10, :cond_d

    iget-object v5, v2, Landroidx/appcompat/view/menu/mf;->C:Landroidx/appcompat/view/menu/kf;

    iget-object v5, v5, Landroidx/appcompat/view/menu/kf;->d:Landroidx/appcompat/view/menu/kf;

    if-eqz v5, :cond_c

    iget-object v5, v2, Landroidx/appcompat/view/menu/mf;->E:Landroidx/appcompat/view/menu/kf;

    iget-object v5, v5, Landroidx/appcompat/view/menu/kf;->d:Landroidx/appcompat/view/menu/kf;

    if-nez v5, :cond_d

    :cond_c
    sget-object v4, Landroidx/appcompat/view/menu/mf$b;->n:Landroidx/appcompat/view/menu/mf$b;

    :cond_d
    move-object v12, v4

    iget-object v4, v2, Landroidx/appcompat/view/menu/mf;->e:Landroidx/appcompat/view/menu/jz;

    iput-object v9, v4, Landroidx/appcompat/view/menu/y71;->d:Landroidx/appcompat/view/menu/mf$b;

    iget v5, v2, Landroidx/appcompat/view/menu/mf;->l:I

    iput v5, v4, Landroidx/appcompat/view/menu/y71;->a:I

    iget-object v4, v2, Landroidx/appcompat/view/menu/mf;->f:Landroidx/appcompat/view/menu/k51;

    iput-object v12, v4, Landroidx/appcompat/view/menu/y71;->d:Landroidx/appcompat/view/menu/mf$b;

    iget v13, v2, Landroidx/appcompat/view/menu/mf;->m:I

    iput v13, v4, Landroidx/appcompat/view/menu/y71;->a:I

    sget-object v4, Landroidx/appcompat/view/menu/mf$b;->p:Landroidx/appcompat/view/menu/mf$b;

    if-eq v9, v4, :cond_e

    sget-object v14, Landroidx/appcompat/view/menu/mf$b;->m:Landroidx/appcompat/view/menu/mf$b;

    if-eq v9, v14, :cond_e

    sget-object v14, Landroidx/appcompat/view/menu/mf$b;->n:Landroidx/appcompat/view/menu/mf$b;

    if-ne v9, v14, :cond_f

    :cond_e
    if-eq v12, v4, :cond_25

    sget-object v14, Landroidx/appcompat/view/menu/mf$b;->m:Landroidx/appcompat/view/menu/mf$b;

    if-eq v12, v14, :cond_25

    sget-object v14, Landroidx/appcompat/view/menu/mf$b;->n:Landroidx/appcompat/view/menu/mf$b;

    if-ne v12, v14, :cond_f

    goto/16 :goto_3

    :cond_f
    const/high16 v14, 0x3f000000    # 0.5f

    if-ne v9, v6, :cond_17

    sget-object v15, Landroidx/appcompat/view/menu/mf$b;->n:Landroidx/appcompat/view/menu/mf$b;

    if-eq v12, v15, :cond_10

    sget-object v11, Landroidx/appcompat/view/menu/mf$b;->m:Landroidx/appcompat/view/menu/mf$b;

    if-ne v12, v11, :cond_17

    :cond_10
    if-ne v5, v8, :cond_12

    if-ne v12, v15, :cond_11

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object v5, v2

    move-object v6, v15

    move-object v8, v15

    invoke-virtual/range {v4 .. v9}, Landroidx/appcompat/view/menu/ml;->l(Landroidx/appcompat/view/menu/mf;Landroidx/appcompat/view/menu/mf$b;ILandroidx/appcompat/view/menu/mf$b;I)V

    :cond_11
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/mf;->v()I

    move-result v9

    int-to-float v3, v9

    iget v4, v2, Landroidx/appcompat/view/menu/mf;->Q:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v14

    float-to-int v7, v3

    sget-object v8, Landroidx/appcompat/view/menu/mf$b;->m:Landroidx/appcompat/view/menu/mf$b;

    move-object/from16 v4, p0

    move-object v5, v2

    move-object v6, v8

    invoke-virtual/range {v4 .. v9}, Landroidx/appcompat/view/menu/ml;->l(Landroidx/appcompat/view/menu/mf;Landroidx/appcompat/view/menu/mf$b;ILandroidx/appcompat/view/menu/mf$b;I)V

    iget-object v3, v2, Landroidx/appcompat/view/menu/mf;->e:Landroidx/appcompat/view/menu/jz;

    iget-object v3, v3, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/mf;->P()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/zl;->d(I)V

    iget-object v3, v2, Landroidx/appcompat/view/menu/mf;->f:Landroidx/appcompat/view/menu/k51;

    iget-object v3, v3, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/mf;->v()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/zl;->d(I)V

    iput-boolean v10, v2, Landroidx/appcompat/view/menu/mf;->a:Z

    goto/16 :goto_0

    :cond_12
    if-ne v5, v10, :cond_13

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object v5, v2

    move-object v6, v15

    move-object v8, v12

    invoke-virtual/range {v4 .. v9}, Landroidx/appcompat/view/menu/ml;->l(Landroidx/appcompat/view/menu/mf;Landroidx/appcompat/view/menu/mf$b;ILandroidx/appcompat/view/menu/mf$b;I)V

    iget-object v3, v2, Landroidx/appcompat/view/menu/mf;->e:Landroidx/appcompat/view/menu/jz;

    iget-object v3, v3, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/mf;->P()I

    move-result v2

    iput v2, v3, Landroidx/appcompat/view/menu/zl;->m:I

    goto/16 :goto_0

    :cond_13
    if-ne v5, v7, :cond_15

    iget-object v11, v0, Landroidx/appcompat/view/menu/mf;->M:[Landroidx/appcompat/view/menu/mf$b;

    aget-object v11, v11, v3

    sget-object v15, Landroidx/appcompat/view/menu/mf$b;->m:Landroidx/appcompat/view/menu/mf$b;

    if-eq v11, v15, :cond_14

    if-ne v11, v4, :cond_17

    :cond_14
    iget v3, v2, Landroidx/appcompat/view/menu/mf;->q:F

    invoke-virtual/range {p1 .. p1}, Landroidx/appcompat/view/menu/mf;->P()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v3, v14

    float-to-int v7, v3

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/mf;->v()I

    move-result v9

    move-object/from16 v4, p0

    move-object v5, v2

    move-object v6, v15

    move-object v8, v12

    invoke-virtual/range {v4 .. v9}, Landroidx/appcompat/view/menu/ml;->l(Landroidx/appcompat/view/menu/mf;Landroidx/appcompat/view/menu/mf$b;ILandroidx/appcompat/view/menu/mf$b;I)V

    iget-object v3, v2, Landroidx/appcompat/view/menu/mf;->e:Landroidx/appcompat/view/menu/jz;

    iget-object v3, v3, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/mf;->P()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/zl;->d(I)V

    iget-object v3, v2, Landroidx/appcompat/view/menu/mf;->f:Landroidx/appcompat/view/menu/k51;

    iget-object v3, v3, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/mf;->v()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/zl;->d(I)V

    iput-boolean v10, v2, Landroidx/appcompat/view/menu/mf;->a:Z

    goto/16 :goto_0

    :cond_15
    iget-object v11, v2, Landroidx/appcompat/view/menu/mf;->J:[Landroidx/appcompat/view/menu/kf;

    aget-object v7, v11, v3

    iget-object v7, v7, Landroidx/appcompat/view/menu/kf;->d:Landroidx/appcompat/view/menu/kf;

    if-eqz v7, :cond_16

    aget-object v7, v11, v10

    iget-object v7, v7, Landroidx/appcompat/view/menu/kf;->d:Landroidx/appcompat/view/menu/kf;

    if-nez v7, :cond_17

    :cond_16
    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object v5, v2

    move-object v6, v15

    move-object v8, v12

    invoke-virtual/range {v4 .. v9}, Landroidx/appcompat/view/menu/ml;->l(Landroidx/appcompat/view/menu/mf;Landroidx/appcompat/view/menu/mf$b;ILandroidx/appcompat/view/menu/mf$b;I)V

    iget-object v3, v2, Landroidx/appcompat/view/menu/mf;->e:Landroidx/appcompat/view/menu/jz;

    iget-object v3, v3, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/mf;->P()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/zl;->d(I)V

    iget-object v3, v2, Landroidx/appcompat/view/menu/mf;->f:Landroidx/appcompat/view/menu/k51;

    iget-object v3, v3, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/mf;->v()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/zl;->d(I)V

    iput-boolean v10, v2, Landroidx/appcompat/view/menu/mf;->a:Z

    goto/16 :goto_0

    :cond_17
    if-ne v12, v6, :cond_20

    sget-object v11, Landroidx/appcompat/view/menu/mf$b;->n:Landroidx/appcompat/view/menu/mf$b;

    if-eq v9, v11, :cond_18

    sget-object v7, Landroidx/appcompat/view/menu/mf$b;->m:Landroidx/appcompat/view/menu/mf$b;

    if-ne v9, v7, :cond_20

    :cond_18
    if-ne v13, v8, :cond_1b

    if-ne v9, v11, :cond_19

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object v5, v2

    move-object v6, v11

    move-object v8, v11

    invoke-virtual/range {v4 .. v9}, Landroidx/appcompat/view/menu/ml;->l(Landroidx/appcompat/view/menu/mf;Landroidx/appcompat/view/menu/mf$b;ILandroidx/appcompat/view/menu/mf$b;I)V

    :cond_19
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/mf;->P()I

    move-result v7

    iget v3, v2, Landroidx/appcompat/view/menu/mf;->Q:F

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/mf;->u()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1a

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v3, v4, v3

    :cond_1a
    int-to-float v4, v7

    mul-float/2addr v4, v3

    add-float/2addr v4, v14

    float-to-int v9, v4

    sget-object v8, Landroidx/appcompat/view/menu/mf$b;->m:Landroidx/appcompat/view/menu/mf$b;

    move-object/from16 v4, p0

    move-object v5, v2

    move-object v6, v8

    invoke-virtual/range {v4 .. v9}, Landroidx/appcompat/view/menu/ml;->l(Landroidx/appcompat/view/menu/mf;Landroidx/appcompat/view/menu/mf$b;ILandroidx/appcompat/view/menu/mf$b;I)V

    iget-object v3, v2, Landroidx/appcompat/view/menu/mf;->e:Landroidx/appcompat/view/menu/jz;

    iget-object v3, v3, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/mf;->P()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/zl;->d(I)V

    iget-object v3, v2, Landroidx/appcompat/view/menu/mf;->f:Landroidx/appcompat/view/menu/k51;

    iget-object v3, v3, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/mf;->v()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/zl;->d(I)V

    iput-boolean v10, v2, Landroidx/appcompat/view/menu/mf;->a:Z

    goto/16 :goto_0

    :cond_1b
    if-ne v13, v10, :cond_1c

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object/from16 v4, p0

    move-object v5, v2

    move-object v6, v9

    move-object v8, v11

    move v9, v3

    invoke-virtual/range {v4 .. v9}, Landroidx/appcompat/view/menu/ml;->l(Landroidx/appcompat/view/menu/mf;Landroidx/appcompat/view/menu/mf$b;ILandroidx/appcompat/view/menu/mf$b;I)V

    iget-object v3, v2, Landroidx/appcompat/view/menu/mf;->f:Landroidx/appcompat/view/menu/k51;

    iget-object v3, v3, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/mf;->v()I

    move-result v2

    iput v2, v3, Landroidx/appcompat/view/menu/zl;->m:I

    goto/16 :goto_0

    :cond_1c
    const/4 v7, 0x2

    if-ne v13, v7, :cond_1e

    iget-object v7, v0, Landroidx/appcompat/view/menu/mf;->M:[Landroidx/appcompat/view/menu/mf$b;

    aget-object v7, v7, v10

    sget-object v8, Landroidx/appcompat/view/menu/mf$b;->m:Landroidx/appcompat/view/menu/mf$b;

    if-eq v7, v8, :cond_1d

    if-ne v7, v4, :cond_20

    :cond_1d
    iget v3, v2, Landroidx/appcompat/view/menu/mf;->t:F

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/mf;->P()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroidx/appcompat/view/menu/mf;->v()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v3, v14

    float-to-int v3, v3

    move-object/from16 v4, p0

    move-object v5, v2

    move-object v6, v9

    move v9, v3

    invoke-virtual/range {v4 .. v9}, Landroidx/appcompat/view/menu/ml;->l(Landroidx/appcompat/view/menu/mf;Landroidx/appcompat/view/menu/mf$b;ILandroidx/appcompat/view/menu/mf$b;I)V

    iget-object v3, v2, Landroidx/appcompat/view/menu/mf;->e:Landroidx/appcompat/view/menu/jz;

    iget-object v3, v3, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/mf;->P()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/zl;->d(I)V

    iget-object v3, v2, Landroidx/appcompat/view/menu/mf;->f:Landroidx/appcompat/view/menu/k51;

    iget-object v3, v3, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/mf;->v()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/zl;->d(I)V

    iput-boolean v10, v2, Landroidx/appcompat/view/menu/mf;->a:Z

    goto/16 :goto_0

    :cond_1e
    iget-object v4, v2, Landroidx/appcompat/view/menu/mf;->J:[Landroidx/appcompat/view/menu/kf;

    const/4 v7, 0x2

    aget-object v15, v4, v7

    iget-object v7, v15, Landroidx/appcompat/view/menu/kf;->d:Landroidx/appcompat/view/menu/kf;

    if-eqz v7, :cond_1f

    aget-object v4, v4, v8

    iget-object v4, v4, Landroidx/appcompat/view/menu/kf;->d:Landroidx/appcompat/view/menu/kf;

    if-nez v4, :cond_20

    :cond_1f
    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object v5, v2

    move-object v6, v11

    move-object v8, v12

    invoke-virtual/range {v4 .. v9}, Landroidx/appcompat/view/menu/ml;->l(Landroidx/appcompat/view/menu/mf;Landroidx/appcompat/view/menu/mf$b;ILandroidx/appcompat/view/menu/mf$b;I)V

    iget-object v3, v2, Landroidx/appcompat/view/menu/mf;->e:Landroidx/appcompat/view/menu/jz;

    iget-object v3, v3, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/mf;->P()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/zl;->d(I)V

    iget-object v3, v2, Landroidx/appcompat/view/menu/mf;->f:Landroidx/appcompat/view/menu/k51;

    iget-object v3, v3, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/mf;->v()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/zl;->d(I)V

    iput-boolean v10, v2, Landroidx/appcompat/view/menu/mf;->a:Z

    goto/16 :goto_0

    :cond_20
    if-ne v9, v6, :cond_0

    if-ne v12, v6, :cond_0

    if-eq v5, v10, :cond_24

    if-ne v13, v10, :cond_21

    goto :goto_2

    :cond_21
    const/4 v4, 0x2

    if-ne v13, v4, :cond_0

    if-ne v5, v4, :cond_0

    iget-object v4, v0, Landroidx/appcompat/view/menu/mf;->M:[Landroidx/appcompat/view/menu/mf$b;

    aget-object v3, v4, v3

    sget-object v8, Landroidx/appcompat/view/menu/mf$b;->m:Landroidx/appcompat/view/menu/mf$b;

    if-eq v3, v8, :cond_22

    if-ne v3, v8, :cond_0

    :cond_22
    aget-object v3, v4, v10

    if-eq v3, v8, :cond_23

    if-ne v3, v8, :cond_0

    :cond_23
    iget v3, v2, Landroidx/appcompat/view/menu/mf;->q:F

    iget v4, v2, Landroidx/appcompat/view/menu/mf;->t:F

    invoke-virtual/range {p1 .. p1}, Landroidx/appcompat/view/menu/mf;->P()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v3, v5

    add-float/2addr v3, v14

    float-to-int v7, v3

    invoke-virtual/range {p1 .. p1}, Landroidx/appcompat/view/menu/mf;->v()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v4, v3

    add-float/2addr v4, v14

    float-to-int v9, v4

    move-object/from16 v4, p0

    move-object v5, v2

    move-object v6, v8

    invoke-virtual/range {v4 .. v9}, Landroidx/appcompat/view/menu/ml;->l(Landroidx/appcompat/view/menu/mf;Landroidx/appcompat/view/menu/mf$b;ILandroidx/appcompat/view/menu/mf$b;I)V

    iget-object v3, v2, Landroidx/appcompat/view/menu/mf;->e:Landroidx/appcompat/view/menu/jz;

    iget-object v3, v3, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/mf;->P()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/zl;->d(I)V

    iget-object v3, v2, Landroidx/appcompat/view/menu/mf;->f:Landroidx/appcompat/view/menu/k51;

    iget-object v3, v3, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/mf;->v()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/zl;->d(I)V

    iput-boolean v10, v2, Landroidx/appcompat/view/menu/mf;->a:Z

    goto/16 :goto_0

    :cond_24
    :goto_2
    sget-object v8, Landroidx/appcompat/view/menu/mf$b;->n:Landroidx/appcompat/view/menu/mf$b;

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object v5, v2

    move-object v6, v8

    invoke-virtual/range {v4 .. v9}, Landroidx/appcompat/view/menu/ml;->l(Landroidx/appcompat/view/menu/mf;Landroidx/appcompat/view/menu/mf$b;ILandroidx/appcompat/view/menu/mf$b;I)V

    iget-object v3, v2, Landroidx/appcompat/view/menu/mf;->e:Landroidx/appcompat/view/menu/jz;

    iget-object v3, v3, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/mf;->P()I

    move-result v4

    iput v4, v3, Landroidx/appcompat/view/menu/zl;->m:I

    iget-object v3, v2, Landroidx/appcompat/view/menu/mf;->f:Landroidx/appcompat/view/menu/k51;

    iget-object v3, v3, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/mf;->v()I

    move-result v2

    iput v2, v3, Landroidx/appcompat/view/menu/zl;->m:I

    goto/16 :goto_0

    :cond_25
    :goto_3
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/mf;->P()I

    move-result v3

    if-ne v9, v4, :cond_26

    invoke-virtual/range {p1 .. p1}, Landroidx/appcompat/view/menu/mf;->P()I

    move-result v3

    iget-object v5, v2, Landroidx/appcompat/view/menu/mf;->B:Landroidx/appcompat/view/menu/kf;

    iget v5, v5, Landroidx/appcompat/view/menu/kf;->e:I

    sub-int/2addr v3, v5

    iget-object v5, v2, Landroidx/appcompat/view/menu/mf;->D:Landroidx/appcompat/view/menu/kf;

    iget v5, v5, Landroidx/appcompat/view/menu/kf;->e:I

    sub-int/2addr v3, v5

    sget-object v5, Landroidx/appcompat/view/menu/mf$b;->m:Landroidx/appcompat/view/menu/mf$b;

    move v7, v3

    move-object v6, v5

    goto :goto_4

    :cond_26
    move v7, v3

    move-object v6, v9

    :goto_4
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/mf;->v()I

    move-result v3

    if-ne v12, v4, :cond_27

    invoke-virtual/range {p1 .. p1}, Landroidx/appcompat/view/menu/mf;->v()I

    move-result v3

    iget-object v4, v2, Landroidx/appcompat/view/menu/mf;->C:Landroidx/appcompat/view/menu/kf;

    iget v4, v4, Landroidx/appcompat/view/menu/kf;->e:I

    sub-int/2addr v3, v4

    iget-object v4, v2, Landroidx/appcompat/view/menu/mf;->E:Landroidx/appcompat/view/menu/kf;

    iget v4, v4, Landroidx/appcompat/view/menu/kf;->e:I

    sub-int/2addr v3, v4

    sget-object v4, Landroidx/appcompat/view/menu/mf$b;->m:Landroidx/appcompat/view/menu/mf$b;

    move v9, v3

    move-object v8, v4

    goto :goto_5

    :cond_27
    move v9, v3

    move-object v8, v12

    :goto_5
    move-object/from16 v4, p0

    move-object v5, v2

    invoke-virtual/range {v4 .. v9}, Landroidx/appcompat/view/menu/ml;->l(Landroidx/appcompat/view/menu/mf;Landroidx/appcompat/view/menu/mf$b;ILandroidx/appcompat/view/menu/mf$b;I)V

    iget-object v3, v2, Landroidx/appcompat/view/menu/mf;->e:Landroidx/appcompat/view/menu/jz;

    iget-object v3, v3, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/mf;->P()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/zl;->d(I)V

    iget-object v3, v2, Landroidx/appcompat/view/menu/mf;->f:Landroidx/appcompat/view/menu/k51;

    iget-object v3, v3, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/mf;->v()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/zl;->d(I)V

    iput-boolean v10, v2, Landroidx/appcompat/view/menu/mf;->a:Z

    goto/16 :goto_0

    :cond_28
    return v3
.end method

.method public c()V
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/ml;->e:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ml;->d(Ljava/util/ArrayList;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/ml;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    sput v0, Landroidx/appcompat/view/menu/zp0;->h:I

    iget-object v1, p0, Landroidx/appcompat/view/menu/ml;->a:Landroidx/appcompat/view/menu/nf;

    iget-object v1, v1, Landroidx/appcompat/view/menu/mf;->e:Landroidx/appcompat/view/menu/jz;

    iget-object v2, p0, Landroidx/appcompat/view/menu/ml;->i:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v0, v2}, Landroidx/appcompat/view/menu/ml;->i(Landroidx/appcompat/view/menu/y71;ILjava/util/ArrayList;)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/ml;->a:Landroidx/appcompat/view/menu/nf;

    iget-object v1, v1, Landroidx/appcompat/view/menu/mf;->f:Landroidx/appcompat/view/menu/k51;

    const/4 v2, 0x1

    iget-object v3, p0, Landroidx/appcompat/view/menu/ml;->i:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v2, v3}, Landroidx/appcompat/view/menu/ml;->i(Landroidx/appcompat/view/menu/y71;ILjava/util/ArrayList;)V

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/ml;->b:Z

    return-void
.end method

.method public d(Ljava/util/ArrayList;)V
    .locals 5

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/ml;->d:Landroidx/appcompat/view/menu/nf;

    iget-object v0, v0, Landroidx/appcompat/view/menu/mf;->e:Landroidx/appcompat/view/menu/jz;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/jz;->f()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/ml;->d:Landroidx/appcompat/view/menu/nf;

    iget-object v0, v0, Landroidx/appcompat/view/menu/mf;->f:Landroidx/appcompat/view/menu/k51;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/k51;->f()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/ml;->d:Landroidx/appcompat/view/menu/nf;

    iget-object v0, v0, Landroidx/appcompat/view/menu/mf;->e:Landroidx/appcompat/view/menu/jz;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/ml;->d:Landroidx/appcompat/view/menu/nf;

    iget-object v0, v0, Landroidx/appcompat/view/menu/mf;->f:Landroidx/appcompat/view/menu/k51;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/ml;->d:Landroidx/appcompat/view/menu/nf;

    iget-object v0, v0, Landroidx/appcompat/view/menu/x71;->w0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/mf;

    instance-of v3, v2, Landroidx/appcompat/view/menu/jy;

    if-eqz v3, :cond_1

    new-instance v3, Landroidx/appcompat/view/menu/ky;

    invoke-direct {v3, v2}, Landroidx/appcompat/view/menu/ky;-><init>(Landroidx/appcompat/view/menu/mf;)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/mf;->V()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v2, Landroidx/appcompat/view/menu/mf;->c:Landroidx/appcompat/view/menu/qa;

    if-nez v3, :cond_2

    new-instance v3, Landroidx/appcompat/view/menu/qa;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Landroidx/appcompat/view/menu/qa;-><init>(Landroidx/appcompat/view/menu/mf;I)V

    iput-object v3, v2, Landroidx/appcompat/view/menu/mf;->c:Landroidx/appcompat/view/menu/qa;

    :cond_2
    if-nez v1, :cond_3

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    :cond_3
    iget-object v3, v2, Landroidx/appcompat/view/menu/mf;->c:Landroidx/appcompat/view/menu/qa;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object v3, v2, Landroidx/appcompat/view/menu/mf;->e:Landroidx/appcompat/view/menu/jz;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/mf;->X()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, v2, Landroidx/appcompat/view/menu/mf;->d:Landroidx/appcompat/view/menu/qa;

    if-nez v3, :cond_5

    new-instance v3, Landroidx/appcompat/view/menu/qa;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Landroidx/appcompat/view/menu/qa;-><init>(Landroidx/appcompat/view/menu/mf;I)V

    iput-object v3, v2, Landroidx/appcompat/view/menu/mf;->d:Landroidx/appcompat/view/menu/qa;

    :cond_5
    if-nez v1, :cond_6

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    :cond_6
    iget-object v3, v2, Landroidx/appcompat/view/menu/mf;->d:Landroidx/appcompat/view/menu/qa;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    iget-object v3, v2, Landroidx/appcompat/view/menu/mf;->f:Landroidx/appcompat/view/menu/k51;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    instance-of v3, v2, Landroidx/appcompat/view/menu/fz;

    if-eqz v3, :cond_0

    new-instance v3, Landroidx/appcompat/view/menu/ez;

    invoke-direct {v3, v2}, Landroidx/appcompat/view/menu/ez;-><init>(Landroidx/appcompat/view/menu/mf;)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    if-eqz v1, :cond_9

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_9
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/y71;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/y71;->f()V

    goto :goto_3

    :cond_a
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/y71;

    iget-object v1, v0, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v2, p0, Landroidx/appcompat/view/menu/ml;->d:Landroidx/appcompat/view/menu/nf;

    if-ne v1, v2, :cond_b

    goto :goto_4

    :cond_b
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/y71;->d()V

    goto :goto_4

    :cond_c
    return-void
.end method

.method public final e(Landroidx/appcompat/view/menu/nf;I)I
    .locals 6

    iget-object v0, p0, Landroidx/appcompat/view/menu/ml;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    iget-object v4, p0, Landroidx/appcompat/view/menu/ml;->i:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/zp0;

    invoke-virtual {v4, p1, p2}, Landroidx/appcompat/view/menu/zp0;->b(Landroidx/appcompat/view/menu/nf;I)J

    move-result-wide v4

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    long-to-int p1, v1

    return p1
.end method

.method public f(Z)Z
    .locals 9

    const/4 v0, 0x1

    and-int/2addr p1, v0

    iget-boolean v1, p0, Landroidx/appcompat/view/menu/ml;->b:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroidx/appcompat/view/menu/ml;->c:Z

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/ml;->a:Landroidx/appcompat/view/menu/nf;

    iget-object v1, v1, Landroidx/appcompat/view/menu/x71;->w0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/mf;

    iput-boolean v2, v3, Landroidx/appcompat/view/menu/mf;->a:Z

    iget-object v4, v3, Landroidx/appcompat/view/menu/mf;->e:Landroidx/appcompat/view/menu/jz;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/jz;->r()V

    iget-object v3, v3, Landroidx/appcompat/view/menu/mf;->f:Landroidx/appcompat/view/menu/k51;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/k51;->q()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/appcompat/view/menu/ml;->a:Landroidx/appcompat/view/menu/nf;

    iput-boolean v2, v1, Landroidx/appcompat/view/menu/mf;->a:Z

    iget-object v1, v1, Landroidx/appcompat/view/menu/mf;->e:Landroidx/appcompat/view/menu/jz;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/jz;->r()V

    iget-object v1, p0, Landroidx/appcompat/view/menu/ml;->a:Landroidx/appcompat/view/menu/nf;

    iget-object v1, v1, Landroidx/appcompat/view/menu/mf;->f:Landroidx/appcompat/view/menu/k51;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/k51;->q()V

    iput-boolean v2, p0, Landroidx/appcompat/view/menu/ml;->c:Z

    :cond_2
    iget-object v1, p0, Landroidx/appcompat/view/menu/ml;->d:Landroidx/appcompat/view/menu/nf;

    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/ml;->b(Landroidx/appcompat/view/menu/nf;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Landroidx/appcompat/view/menu/ml;->a:Landroidx/appcompat/view/menu/nf;

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/mf;->F0(I)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/ml;->a:Landroidx/appcompat/view/menu/nf;

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/mf;->G0(I)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/ml;->a:Landroidx/appcompat/view/menu/nf;

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/mf;->s(I)Landroidx/appcompat/view/menu/mf$b;

    move-result-object v1

    iget-object v3, p0, Landroidx/appcompat/view/menu/ml;->a:Landroidx/appcompat/view/menu/nf;

    invoke-virtual {v3, v0}, Landroidx/appcompat/view/menu/mf;->s(I)Landroidx/appcompat/view/menu/mf$b;

    move-result-object v3

    iget-boolean v4, p0, Landroidx/appcompat/view/menu/ml;->b:Z

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ml;->c()V

    :cond_4
    iget-object v4, p0, Landroidx/appcompat/view/menu/ml;->a:Landroidx/appcompat/view/menu/nf;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/mf;->Q()I

    move-result v4

    iget-object v5, p0, Landroidx/appcompat/view/menu/ml;->a:Landroidx/appcompat/view/menu/nf;

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/mf;->R()I

    move-result v5

    iget-object v6, p0, Landroidx/appcompat/view/menu/ml;->a:Landroidx/appcompat/view/menu/nf;

    iget-object v6, v6, Landroidx/appcompat/view/menu/mf;->e:Landroidx/appcompat/view/menu/jz;

    iget-object v6, v6, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    invoke-virtual {v6, v4}, Landroidx/appcompat/view/menu/nl;->d(I)V

    iget-object v6, p0, Landroidx/appcompat/view/menu/ml;->a:Landroidx/appcompat/view/menu/nf;

    iget-object v6, v6, Landroidx/appcompat/view/menu/mf;->f:Landroidx/appcompat/view/menu/k51;

    iget-object v6, v6, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    invoke-virtual {v6, v5}, Landroidx/appcompat/view/menu/nl;->d(I)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ml;->m()V

    sget-object v6, Landroidx/appcompat/view/menu/mf$b;->n:Landroidx/appcompat/view/menu/mf$b;

    if-eq v1, v6, :cond_5

    if-ne v3, v6, :cond_9

    :cond_5
    if-eqz p1, :cond_7

    iget-object v6, p0, Landroidx/appcompat/view/menu/ml;->e:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/view/menu/y71;

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/y71;->m()Z

    move-result v7

    if-nez v7, :cond_6

    move p1, v2

    :cond_7
    if-eqz p1, :cond_8

    sget-object v6, Landroidx/appcompat/view/menu/mf$b;->n:Landroidx/appcompat/view/menu/mf$b;

    if-ne v1, v6, :cond_8

    iget-object v6, p0, Landroidx/appcompat/view/menu/ml;->a:Landroidx/appcompat/view/menu/nf;

    sget-object v7, Landroidx/appcompat/view/menu/mf$b;->m:Landroidx/appcompat/view/menu/mf$b;

    invoke-virtual {v6, v7}, Landroidx/appcompat/view/menu/mf;->l0(Landroidx/appcompat/view/menu/mf$b;)V

    iget-object v6, p0, Landroidx/appcompat/view/menu/ml;->a:Landroidx/appcompat/view/menu/nf;

    invoke-virtual {p0, v6, v2}, Landroidx/appcompat/view/menu/ml;->e(Landroidx/appcompat/view/menu/nf;I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroidx/appcompat/view/menu/mf;->E0(I)V

    iget-object v6, p0, Landroidx/appcompat/view/menu/ml;->a:Landroidx/appcompat/view/menu/nf;

    iget-object v7, v6, Landroidx/appcompat/view/menu/mf;->e:Landroidx/appcompat/view/menu/jz;

    iget-object v7, v7, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/mf;->P()I

    move-result v6

    invoke-virtual {v7, v6}, Landroidx/appcompat/view/menu/zl;->d(I)V

    :cond_8
    if-eqz p1, :cond_9

    sget-object p1, Landroidx/appcompat/view/menu/mf$b;->n:Landroidx/appcompat/view/menu/mf$b;

    if-ne v3, p1, :cond_9

    iget-object p1, p0, Landroidx/appcompat/view/menu/ml;->a:Landroidx/appcompat/view/menu/nf;

    sget-object v6, Landroidx/appcompat/view/menu/mf$b;->m:Landroidx/appcompat/view/menu/mf$b;

    invoke-virtual {p1, v6}, Landroidx/appcompat/view/menu/mf;->A0(Landroidx/appcompat/view/menu/mf$b;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/ml;->a:Landroidx/appcompat/view/menu/nf;

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/ml;->e(Landroidx/appcompat/view/menu/nf;I)I

    move-result v6

    invoke-virtual {p1, v6}, Landroidx/appcompat/view/menu/mf;->h0(I)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/ml;->a:Landroidx/appcompat/view/menu/nf;

    iget-object v6, p1, Landroidx/appcompat/view/menu/mf;->f:Landroidx/appcompat/view/menu/k51;

    iget-object v6, v6, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/mf;->v()I

    move-result p1

    invoke-virtual {v6, p1}, Landroidx/appcompat/view/menu/zl;->d(I)V

    :cond_9
    iget-object p1, p0, Landroidx/appcompat/view/menu/ml;->a:Landroidx/appcompat/view/menu/nf;

    iget-object v6, p1, Landroidx/appcompat/view/menu/mf;->M:[Landroidx/appcompat/view/menu/mf$b;

    aget-object v6, v6, v2

    sget-object v7, Landroidx/appcompat/view/menu/mf$b;->m:Landroidx/appcompat/view/menu/mf$b;

    if-eq v6, v7, :cond_b

    sget-object v8, Landroidx/appcompat/view/menu/mf$b;->p:Landroidx/appcompat/view/menu/mf$b;

    if-ne v6, v8, :cond_a

    goto :goto_1

    :cond_a
    move p1, v2

    goto :goto_2

    :cond_b
    :goto_1
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/mf;->P()I

    move-result p1

    add-int/2addr p1, v4

    iget-object v6, p0, Landroidx/appcompat/view/menu/ml;->a:Landroidx/appcompat/view/menu/nf;

    iget-object v6, v6, Landroidx/appcompat/view/menu/mf;->e:Landroidx/appcompat/view/menu/jz;

    iget-object v6, v6, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    invoke-virtual {v6, p1}, Landroidx/appcompat/view/menu/nl;->d(I)V

    iget-object v6, p0, Landroidx/appcompat/view/menu/ml;->a:Landroidx/appcompat/view/menu/nf;

    iget-object v6, v6, Landroidx/appcompat/view/menu/mf;->e:Landroidx/appcompat/view/menu/jz;

    iget-object v6, v6, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    sub-int/2addr p1, v4

    invoke-virtual {v6, p1}, Landroidx/appcompat/view/menu/zl;->d(I)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ml;->m()V

    iget-object p1, p0, Landroidx/appcompat/view/menu/ml;->a:Landroidx/appcompat/view/menu/nf;

    iget-object v4, p1, Landroidx/appcompat/view/menu/mf;->M:[Landroidx/appcompat/view/menu/mf$b;

    aget-object v4, v4, v0

    if-eq v4, v7, :cond_c

    sget-object v6, Landroidx/appcompat/view/menu/mf$b;->p:Landroidx/appcompat/view/menu/mf$b;

    if-ne v4, v6, :cond_d

    :cond_c
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/mf;->v()I

    move-result p1

    add-int/2addr p1, v5

    iget-object v4, p0, Landroidx/appcompat/view/menu/ml;->a:Landroidx/appcompat/view/menu/nf;

    iget-object v4, v4, Landroidx/appcompat/view/menu/mf;->f:Landroidx/appcompat/view/menu/k51;

    iget-object v4, v4, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    invoke-virtual {v4, p1}, Landroidx/appcompat/view/menu/nl;->d(I)V

    iget-object v4, p0, Landroidx/appcompat/view/menu/ml;->a:Landroidx/appcompat/view/menu/nf;

    iget-object v4, v4, Landroidx/appcompat/view/menu/mf;->f:Landroidx/appcompat/view/menu/k51;

    iget-object v4, v4, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    sub-int/2addr p1, v5

    invoke-virtual {v4, p1}, Landroidx/appcompat/view/menu/zl;->d(I)V

    :cond_d
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ml;->m()V

    move p1, v0

    :goto_2
    iget-object v4, p0, Landroidx/appcompat/view/menu/ml;->e:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/view/menu/y71;

    iget-object v6, v5, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v7, p0, Landroidx/appcompat/view/menu/ml;->a:Landroidx/appcompat/view/menu/nf;

    if-ne v6, v7, :cond_e

    iget-boolean v6, v5, Landroidx/appcompat/view/menu/y71;->g:Z

    if-nez v6, :cond_e

    goto :goto_3

    :cond_e
    invoke-virtual {v5}, Landroidx/appcompat/view/menu/y71;->e()V

    goto :goto_3

    :cond_f
    iget-object v4, p0, Landroidx/appcompat/view/menu/ml;->e:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_10
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/view/menu/y71;

    if-nez p1, :cond_11

    iget-object v6, v5, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v7, p0, Landroidx/appcompat/view/menu/ml;->a:Landroidx/appcompat/view/menu/nf;

    if-ne v6, v7, :cond_11

    goto :goto_4

    :cond_11
    iget-object v6, v5, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-boolean v6, v6, Landroidx/appcompat/view/menu/nl;->j:Z

    if-nez v6, :cond_12

    :goto_5
    move v0, v2

    goto :goto_6

    :cond_12
    iget-object v6, v5, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iget-boolean v6, v6, Landroidx/appcompat/view/menu/nl;->j:Z

    if-nez v6, :cond_13

    instance-of v6, v5, Landroidx/appcompat/view/menu/ky;

    if-nez v6, :cond_13

    goto :goto_5

    :cond_13
    iget-object v6, v5, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iget-boolean v6, v6, Landroidx/appcompat/view/menu/nl;->j:Z

    if-nez v6, :cond_10

    instance-of v6, v5, Landroidx/appcompat/view/menu/qa;

    if-nez v6, :cond_10

    instance-of v5, v5, Landroidx/appcompat/view/menu/ky;

    if-nez v5, :cond_10

    goto :goto_5

    :cond_14
    :goto_6
    iget-object p1, p0, Landroidx/appcompat/view/menu/ml;->a:Landroidx/appcompat/view/menu/nf;

    invoke-virtual {p1, v1}, Landroidx/appcompat/view/menu/mf;->l0(Landroidx/appcompat/view/menu/mf$b;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/ml;->a:Landroidx/appcompat/view/menu/nf;

    invoke-virtual {p1, v3}, Landroidx/appcompat/view/menu/mf;->A0(Landroidx/appcompat/view/menu/mf$b;)V

    return v0
.end method

.method public g(Z)Z
    .locals 4

    iget-boolean p1, p0, Landroidx/appcompat/view/menu/ml;->b:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/appcompat/view/menu/ml;->a:Landroidx/appcompat/view/menu/nf;

    iget-object p1, p1, Landroidx/appcompat/view/menu/x71;->w0:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/mf;

    iput-boolean v0, v1, Landroidx/appcompat/view/menu/mf;->a:Z

    iget-object v2, v1, Landroidx/appcompat/view/menu/mf;->e:Landroidx/appcompat/view/menu/jz;

    iget-object v3, v2, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iput-boolean v0, v3, Landroidx/appcompat/view/menu/nl;->j:Z

    iput-boolean v0, v2, Landroidx/appcompat/view/menu/y71;->g:Z

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/jz;->r()V

    iget-object v1, v1, Landroidx/appcompat/view/menu/mf;->f:Landroidx/appcompat/view/menu/k51;

    iget-object v2, v1, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iput-boolean v0, v2, Landroidx/appcompat/view/menu/nl;->j:Z

    iput-boolean v0, v1, Landroidx/appcompat/view/menu/y71;->g:Z

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/k51;->q()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/ml;->a:Landroidx/appcompat/view/menu/nf;

    iput-boolean v0, p1, Landroidx/appcompat/view/menu/mf;->a:Z

    iget-object p1, p1, Landroidx/appcompat/view/menu/mf;->e:Landroidx/appcompat/view/menu/jz;

    iget-object v1, p1, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iput-boolean v0, v1, Landroidx/appcompat/view/menu/nl;->j:Z

    iput-boolean v0, p1, Landroidx/appcompat/view/menu/y71;->g:Z

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/jz;->r()V

    iget-object p1, p0, Landroidx/appcompat/view/menu/ml;->a:Landroidx/appcompat/view/menu/nf;

    iget-object p1, p1, Landroidx/appcompat/view/menu/mf;->f:Landroidx/appcompat/view/menu/k51;

    iget-object v1, p1, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iput-boolean v0, v1, Landroidx/appcompat/view/menu/nl;->j:Z

    iput-boolean v0, p1, Landroidx/appcompat/view/menu/y71;->g:Z

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/k51;->q()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ml;->c()V

    :cond_1
    iget-object p1, p0, Landroidx/appcompat/view/menu/ml;->d:Landroidx/appcompat/view/menu/nf;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/ml;->b(Landroidx/appcompat/view/menu/nf;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    iget-object p1, p0, Landroidx/appcompat/view/menu/ml;->a:Landroidx/appcompat/view/menu/nf;

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/mf;->F0(I)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/ml;->a:Landroidx/appcompat/view/menu/nf;

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/mf;->G0(I)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/ml;->a:Landroidx/appcompat/view/menu/nf;

    iget-object p1, p1, Landroidx/appcompat/view/menu/mf;->e:Landroidx/appcompat/view/menu/jz;

    iget-object p1, p1, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/nl;->d(I)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/ml;->a:Landroidx/appcompat/view/menu/nf;

    iget-object p1, p1, Landroidx/appcompat/view/menu/mf;->f:Landroidx/appcompat/view/menu/k51;

    iget-object p1, p1, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/nl;->d(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public h(ZI)Z
    .locals 9

    const/4 v0, 0x1

    and-int/2addr p1, v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/ml;->a:Landroidx/appcompat/view/menu/nf;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/mf;->s(I)Landroidx/appcompat/view/menu/mf$b;

    move-result-object v1

    iget-object v3, p0, Landroidx/appcompat/view/menu/ml;->a:Landroidx/appcompat/view/menu/nf;

    invoke-virtual {v3, v0}, Landroidx/appcompat/view/menu/mf;->s(I)Landroidx/appcompat/view/menu/mf$b;

    move-result-object v3

    iget-object v4, p0, Landroidx/appcompat/view/menu/ml;->a:Landroidx/appcompat/view/menu/nf;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/mf;->Q()I

    move-result v4

    iget-object v5, p0, Landroidx/appcompat/view/menu/ml;->a:Landroidx/appcompat/view/menu/nf;

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/mf;->R()I

    move-result v5

    if-eqz p1, :cond_4

    sget-object v6, Landroidx/appcompat/view/menu/mf$b;->n:Landroidx/appcompat/view/menu/mf$b;

    if-eq v1, v6, :cond_0

    if-ne v3, v6, :cond_4

    :cond_0
    iget-object v6, p0, Landroidx/appcompat/view/menu/ml;->e:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/view/menu/y71;

    iget v8, v7, Landroidx/appcompat/view/menu/y71;->f:I

    if-ne v8, p2, :cond_1

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/y71;->m()Z

    move-result v7

    if-nez v7, :cond_1

    move p1, v2

    :cond_2
    if-nez p2, :cond_3

    if-eqz p1, :cond_4

    sget-object p1, Landroidx/appcompat/view/menu/mf$b;->n:Landroidx/appcompat/view/menu/mf$b;

    if-ne v1, p1, :cond_4

    iget-object p1, p0, Landroidx/appcompat/view/menu/ml;->a:Landroidx/appcompat/view/menu/nf;

    sget-object v6, Landroidx/appcompat/view/menu/mf$b;->m:Landroidx/appcompat/view/menu/mf$b;

    invoke-virtual {p1, v6}, Landroidx/appcompat/view/menu/mf;->l0(Landroidx/appcompat/view/menu/mf$b;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/ml;->a:Landroidx/appcompat/view/menu/nf;

    invoke-virtual {p0, p1, v2}, Landroidx/appcompat/view/menu/ml;->e(Landroidx/appcompat/view/menu/nf;I)I

    move-result v6

    invoke-virtual {p1, v6}, Landroidx/appcompat/view/menu/mf;->E0(I)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/ml;->a:Landroidx/appcompat/view/menu/nf;

    iget-object v6, p1, Landroidx/appcompat/view/menu/mf;->e:Landroidx/appcompat/view/menu/jz;

    iget-object v6, v6, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/mf;->P()I

    move-result p1

    invoke-virtual {v6, p1}, Landroidx/appcompat/view/menu/zl;->d(I)V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    sget-object p1, Landroidx/appcompat/view/menu/mf$b;->n:Landroidx/appcompat/view/menu/mf$b;

    if-ne v3, p1, :cond_4

    iget-object p1, p0, Landroidx/appcompat/view/menu/ml;->a:Landroidx/appcompat/view/menu/nf;

    sget-object v6, Landroidx/appcompat/view/menu/mf$b;->m:Landroidx/appcompat/view/menu/mf$b;

    invoke-virtual {p1, v6}, Landroidx/appcompat/view/menu/mf;->A0(Landroidx/appcompat/view/menu/mf$b;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/ml;->a:Landroidx/appcompat/view/menu/nf;

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/ml;->e(Landroidx/appcompat/view/menu/nf;I)I

    move-result v6

    invoke-virtual {p1, v6}, Landroidx/appcompat/view/menu/mf;->h0(I)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/ml;->a:Landroidx/appcompat/view/menu/nf;

    iget-object v6, p1, Landroidx/appcompat/view/menu/mf;->f:Landroidx/appcompat/view/menu/k51;

    iget-object v6, v6, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/mf;->v()I

    move-result p1

    invoke-virtual {v6, p1}, Landroidx/appcompat/view/menu/zl;->d(I)V

    :cond_4
    :goto_0
    if-nez p2, :cond_6

    iget-object p1, p0, Landroidx/appcompat/view/menu/ml;->a:Landroidx/appcompat/view/menu/nf;

    iget-object v5, p1, Landroidx/appcompat/view/menu/mf;->M:[Landroidx/appcompat/view/menu/mf$b;

    aget-object v5, v5, v2

    sget-object v6, Landroidx/appcompat/view/menu/mf$b;->m:Landroidx/appcompat/view/menu/mf$b;

    if-eq v5, v6, :cond_5

    sget-object v6, Landroidx/appcompat/view/menu/mf$b;->p:Landroidx/appcompat/view/menu/mf$b;

    if-ne v5, v6, :cond_7

    :cond_5
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/mf;->P()I

    move-result p1

    add-int/2addr p1, v4

    iget-object v5, p0, Landroidx/appcompat/view/menu/ml;->a:Landroidx/appcompat/view/menu/nf;

    iget-object v5, v5, Landroidx/appcompat/view/menu/mf;->e:Landroidx/appcompat/view/menu/jz;

    iget-object v5, v5, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    invoke-virtual {v5, p1}, Landroidx/appcompat/view/menu/nl;->d(I)V

    iget-object v5, p0, Landroidx/appcompat/view/menu/ml;->a:Landroidx/appcompat/view/menu/nf;

    iget-object v5, v5, Landroidx/appcompat/view/menu/mf;->e:Landroidx/appcompat/view/menu/jz;

    iget-object v5, v5, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    sub-int/2addr p1, v4

    invoke-virtual {v5, p1}, Landroidx/appcompat/view/menu/zl;->d(I)V

    :goto_1
    move p1, v0

    goto :goto_3

    :cond_6
    iget-object p1, p0, Landroidx/appcompat/view/menu/ml;->a:Landroidx/appcompat/view/menu/nf;

    iget-object v4, p1, Landroidx/appcompat/view/menu/mf;->M:[Landroidx/appcompat/view/menu/mf$b;

    aget-object v4, v4, v0

    sget-object v6, Landroidx/appcompat/view/menu/mf$b;->m:Landroidx/appcompat/view/menu/mf$b;

    if-eq v4, v6, :cond_8

    sget-object v6, Landroidx/appcompat/view/menu/mf$b;->p:Landroidx/appcompat/view/menu/mf$b;

    if-ne v4, v6, :cond_7

    goto :goto_2

    :cond_7
    move p1, v2

    goto :goto_3

    :cond_8
    :goto_2
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/mf;->v()I

    move-result p1

    add-int/2addr p1, v5

    iget-object v4, p0, Landroidx/appcompat/view/menu/ml;->a:Landroidx/appcompat/view/menu/nf;

    iget-object v4, v4, Landroidx/appcompat/view/menu/mf;->f:Landroidx/appcompat/view/menu/k51;

    iget-object v4, v4, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    invoke-virtual {v4, p1}, Landroidx/appcompat/view/menu/nl;->d(I)V

    iget-object v4, p0, Landroidx/appcompat/view/menu/ml;->a:Landroidx/appcompat/view/menu/nf;

    iget-object v4, v4, Landroidx/appcompat/view/menu/mf;->f:Landroidx/appcompat/view/menu/k51;

    iget-object v4, v4, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    sub-int/2addr p1, v5

    invoke-virtual {v4, p1}, Landroidx/appcompat/view/menu/zl;->d(I)V

    goto :goto_1

    :goto_3
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ml;->m()V

    iget-object v4, p0, Landroidx/appcompat/view/menu/ml;->e:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/view/menu/y71;

    iget v6, v5, Landroidx/appcompat/view/menu/y71;->f:I

    if-eq v6, p2, :cond_9

    goto :goto_4

    :cond_9
    iget-object v6, v5, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v7, p0, Landroidx/appcompat/view/menu/ml;->a:Landroidx/appcompat/view/menu/nf;

    if-ne v6, v7, :cond_a

    iget-boolean v6, v5, Landroidx/appcompat/view/menu/y71;->g:Z

    if-nez v6, :cond_a

    goto :goto_4

    :cond_a
    invoke-virtual {v5}, Landroidx/appcompat/view/menu/y71;->e()V

    goto :goto_4

    :cond_b
    iget-object v4, p0, Landroidx/appcompat/view/menu/ml;->e:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/view/menu/y71;

    iget v6, v5, Landroidx/appcompat/view/menu/y71;->f:I

    if-eq v6, p2, :cond_d

    goto :goto_5

    :cond_d
    if-nez p1, :cond_e

    iget-object v6, v5, Landroidx/appcompat/view/menu/y71;->b:Landroidx/appcompat/view/menu/mf;

    iget-object v7, p0, Landroidx/appcompat/view/menu/ml;->a:Landroidx/appcompat/view/menu/nf;

    if-ne v6, v7, :cond_e

    goto :goto_5

    :cond_e
    iget-object v6, v5, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-boolean v6, v6, Landroidx/appcompat/view/menu/nl;->j:Z

    if-nez v6, :cond_f

    :goto_6
    move v0, v2

    goto :goto_7

    :cond_f
    iget-object v6, v5, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iget-boolean v6, v6, Landroidx/appcompat/view/menu/nl;->j:Z

    if-nez v6, :cond_10

    goto :goto_6

    :cond_10
    instance-of v6, v5, Landroidx/appcompat/view/menu/qa;

    if-nez v6, :cond_c

    iget-object v5, v5, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iget-boolean v5, v5, Landroidx/appcompat/view/menu/nl;->j:Z

    if-nez v5, :cond_c

    goto :goto_6

    :cond_11
    :goto_7
    iget-object p1, p0, Landroidx/appcompat/view/menu/ml;->a:Landroidx/appcompat/view/menu/nf;

    invoke-virtual {p1, v1}, Landroidx/appcompat/view/menu/mf;->l0(Landroidx/appcompat/view/menu/mf$b;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/ml;->a:Landroidx/appcompat/view/menu/nf;

    invoke-virtual {p1, v3}, Landroidx/appcompat/view/menu/mf;->A0(Landroidx/appcompat/view/menu/mf$b;)V

    return v0
.end method

.method public final i(Landroidx/appcompat/view/menu/y71;ILjava/util/ArrayList;)V
    .locals 10

    iget-object v0, p1, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    iget-object v0, v0, Landroidx/appcompat/view/menu/nl;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/jl;

    instance-of v2, v1, Landroidx/appcompat/view/menu/nl;

    if-eqz v2, :cond_1

    move-object v4, v1

    check-cast v4, Landroidx/appcompat/view/menu/nl;

    const/4 v6, 0x0

    iget-object v7, p1, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    const/4 v9, 0x0

    move-object v3, p0

    move v5, p2

    move-object v8, p3

    invoke-virtual/range {v3 .. v9}, Landroidx/appcompat/view/menu/ml;->a(Landroidx/appcompat/view/menu/nl;IILandroidx/appcompat/view/menu/nl;Ljava/util/ArrayList;Landroidx/appcompat/view/menu/zp0;)V

    goto :goto_0

    :cond_1
    instance-of v2, v1, Landroidx/appcompat/view/menu/y71;

    if-eqz v2, :cond_0

    check-cast v1, Landroidx/appcompat/view/menu/y71;

    iget-object v3, v1, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    const/4 v5, 0x0

    iget-object v6, p1, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    const/4 v8, 0x0

    move-object v2, p0

    move v4, p2

    move-object v7, p3

    invoke-virtual/range {v2 .. v8}, Landroidx/appcompat/view/menu/ml;->a(Landroidx/appcompat/view/menu/nl;IILandroidx/appcompat/view/menu/nl;Ljava/util/ArrayList;Landroidx/appcompat/view/menu/zp0;)V

    goto :goto_0

    :cond_2
    iget-object v0, p1, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    iget-object v0, v0, Landroidx/appcompat/view/menu/nl;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/jl;

    instance-of v2, v1, Landroidx/appcompat/view/menu/nl;

    if-eqz v2, :cond_4

    move-object v4, v1

    check-cast v4, Landroidx/appcompat/view/menu/nl;

    const/4 v6, 0x1

    iget-object v7, p1, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    const/4 v9, 0x0

    move-object v3, p0

    move v5, p2

    move-object v8, p3

    invoke-virtual/range {v3 .. v9}, Landroidx/appcompat/view/menu/ml;->a(Landroidx/appcompat/view/menu/nl;IILandroidx/appcompat/view/menu/nl;Ljava/util/ArrayList;Landroidx/appcompat/view/menu/zp0;)V

    goto :goto_1

    :cond_4
    instance-of v2, v1, Landroidx/appcompat/view/menu/y71;

    if-eqz v2, :cond_3

    check-cast v1, Landroidx/appcompat/view/menu/y71;

    iget-object v3, v1, Landroidx/appcompat/view/menu/y71;->i:Landroidx/appcompat/view/menu/nl;

    const/4 v5, 0x1

    iget-object v6, p1, Landroidx/appcompat/view/menu/y71;->h:Landroidx/appcompat/view/menu/nl;

    const/4 v8, 0x0

    move-object v2, p0

    move v4, p2

    move-object v7, p3

    invoke-virtual/range {v2 .. v8}, Landroidx/appcompat/view/menu/ml;->a(Landroidx/appcompat/view/menu/nl;IILandroidx/appcompat/view/menu/nl;Ljava/util/ArrayList;Landroidx/appcompat/view/menu/zp0;)V

    goto :goto_1

    :cond_5
    const/4 v0, 0x1

    if-ne p2, v0, :cond_7

    check-cast p1, Landroidx/appcompat/view/menu/k51;

    iget-object p1, p1, Landroidx/appcompat/view/menu/k51;->k:Landroidx/appcompat/view/menu/nl;

    iget-object p1, p1, Landroidx/appcompat/view/menu/nl;->k:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/jl;

    instance-of v1, v0, Landroidx/appcompat/view/menu/nl;

    if-eqz v1, :cond_6

    move-object v3, v0

    check-cast v3, Landroidx/appcompat/view/menu/nl;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move v4, p2

    move-object v7, p3

    invoke-virtual/range {v2 .. v8}, Landroidx/appcompat/view/menu/ml;->a(Landroidx/appcompat/view/menu/nl;IILandroidx/appcompat/view/menu/nl;Ljava/util/ArrayList;Landroidx/appcompat/view/menu/zp0;)V

    goto :goto_2

    :cond_7
    return-void
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/ml;->b:Z

    return-void
.end method

.method public k()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/ml;->c:Z

    return-void
.end method

.method public final l(Landroidx/appcompat/view/menu/mf;Landroidx/appcompat/view/menu/mf$b;ILandroidx/appcompat/view/menu/mf$b;I)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ml;->h:Landroidx/appcompat/view/menu/e8$a;

    iput-object p2, v0, Landroidx/appcompat/view/menu/e8$a;->a:Landroidx/appcompat/view/menu/mf$b;

    iput-object p4, v0, Landroidx/appcompat/view/menu/e8$a;->b:Landroidx/appcompat/view/menu/mf$b;

    iput p3, v0, Landroidx/appcompat/view/menu/e8$a;->c:I

    iput p5, v0, Landroidx/appcompat/view/menu/e8$a;->d:I

    iget-object p2, p0, Landroidx/appcompat/view/menu/ml;->g:Landroidx/appcompat/view/menu/e8$b;

    invoke-interface {p2, p1, v0}, Landroidx/appcompat/view/menu/e8$b;->b(Landroidx/appcompat/view/menu/mf;Landroidx/appcompat/view/menu/e8$a;)V

    iget-object p2, p0, Landroidx/appcompat/view/menu/ml;->h:Landroidx/appcompat/view/menu/e8$a;

    iget p2, p2, Landroidx/appcompat/view/menu/e8$a;->e:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/mf;->E0(I)V

    iget-object p2, p0, Landroidx/appcompat/view/menu/ml;->h:Landroidx/appcompat/view/menu/e8$a;

    iget p2, p2, Landroidx/appcompat/view/menu/e8$a;->f:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/mf;->h0(I)V

    iget-object p2, p0, Landroidx/appcompat/view/menu/ml;->h:Landroidx/appcompat/view/menu/e8$a;

    iget-boolean p2, p2, Landroidx/appcompat/view/menu/e8$a;->h:Z

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/mf;->g0(Z)V

    iget-object p2, p0, Landroidx/appcompat/view/menu/ml;->h:Landroidx/appcompat/view/menu/e8$a;

    iget p2, p2, Landroidx/appcompat/view/menu/e8$a;->g:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/mf;->b0(I)V

    return-void
.end method

.method public m()V
    .locals 12

    iget-object v0, p0, Landroidx/appcompat/view/menu/ml;->a:Landroidx/appcompat/view/menu/nf;

    iget-object v0, v0, Landroidx/appcompat/view/menu/x71;->w0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/mf;

    iget-boolean v2, v1, Landroidx/appcompat/view/menu/mf;->a:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v1, Landroidx/appcompat/view/menu/mf;->M:[Landroidx/appcompat/view/menu/mf$b;

    const/4 v3, 0x0

    aget-object v8, v2, v3

    const/4 v9, 0x1

    aget-object v10, v2, v9

    iget v2, v1, Landroidx/appcompat/view/menu/mf;->l:I

    iget v4, v1, Landroidx/appcompat/view/menu/mf;->m:I

    sget-object v6, Landroidx/appcompat/view/menu/mf$b;->n:Landroidx/appcompat/view/menu/mf$b;

    if-eq v8, v6, :cond_3

    sget-object v5, Landroidx/appcompat/view/menu/mf$b;->o:Landroidx/appcompat/view/menu/mf$b;

    if-ne v8, v5, :cond_2

    if-ne v2, v9, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2

    :cond_3
    :goto_1
    move v2, v9

    :goto_2
    if-eq v10, v6, :cond_4

    sget-object v5, Landroidx/appcompat/view/menu/mf$b;->o:Landroidx/appcompat/view/menu/mf$b;

    if-ne v10, v5, :cond_5

    if-ne v4, v9, :cond_5

    :cond_4
    move v3, v9

    :cond_5
    iget-object v4, v1, Landroidx/appcompat/view/menu/mf;->e:Landroidx/appcompat/view/menu/jz;

    iget-object v4, v4, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iget-boolean v5, v4, Landroidx/appcompat/view/menu/nl;->j:Z

    iget-object v7, v1, Landroidx/appcompat/view/menu/mf;->f:Landroidx/appcompat/view/menu/k51;

    iget-object v7, v7, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    iget-boolean v11, v7, Landroidx/appcompat/view/menu/nl;->j:Z

    if-eqz v5, :cond_6

    if-eqz v11, :cond_6

    sget-object v6, Landroidx/appcompat/view/menu/mf$b;->m:Landroidx/appcompat/view/menu/mf$b;

    iget v5, v4, Landroidx/appcompat/view/menu/nl;->g:I

    iget v7, v7, Landroidx/appcompat/view/menu/nl;->g:I

    move-object v2, p0

    move-object v3, v1

    move-object v4, v6

    invoke-virtual/range {v2 .. v7}, Landroidx/appcompat/view/menu/ml;->l(Landroidx/appcompat/view/menu/mf;Landroidx/appcompat/view/menu/mf$b;ILandroidx/appcompat/view/menu/mf$b;I)V

    iput-boolean v9, v1, Landroidx/appcompat/view/menu/mf;->a:Z

    goto :goto_3

    :cond_6
    if-eqz v5, :cond_8

    if-eqz v3, :cond_8

    sget-object v5, Landroidx/appcompat/view/menu/mf$b;->m:Landroidx/appcompat/view/menu/mf$b;

    iget v8, v4, Landroidx/appcompat/view/menu/nl;->g:I

    iget v7, v7, Landroidx/appcompat/view/menu/nl;->g:I

    move-object v2, p0

    move-object v3, v1

    move-object v4, v5

    move v5, v8

    invoke-virtual/range {v2 .. v7}, Landroidx/appcompat/view/menu/ml;->l(Landroidx/appcompat/view/menu/mf;Landroidx/appcompat/view/menu/mf$b;ILandroidx/appcompat/view/menu/mf$b;I)V

    sget-object v2, Landroidx/appcompat/view/menu/mf$b;->o:Landroidx/appcompat/view/menu/mf$b;

    if-ne v10, v2, :cond_7

    iget-object v2, v1, Landroidx/appcompat/view/menu/mf;->f:Landroidx/appcompat/view/menu/k51;

    iget-object v2, v2, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/mf;->v()I

    move-result v3

    iput v3, v2, Landroidx/appcompat/view/menu/zl;->m:I

    goto :goto_3

    :cond_7
    iget-object v2, v1, Landroidx/appcompat/view/menu/mf;->f:Landroidx/appcompat/view/menu/k51;

    iget-object v2, v2, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/mf;->v()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/zl;->d(I)V

    iput-boolean v9, v1, Landroidx/appcompat/view/menu/mf;->a:Z

    goto :goto_3

    :cond_8
    if-eqz v11, :cond_a

    if-eqz v2, :cond_a

    iget v5, v4, Landroidx/appcompat/view/menu/nl;->g:I

    sget-object v10, Landroidx/appcompat/view/menu/mf$b;->m:Landroidx/appcompat/view/menu/mf$b;

    iget v7, v7, Landroidx/appcompat/view/menu/nl;->g:I

    move-object v2, p0

    move-object v3, v1

    move-object v4, v6

    move-object v6, v10

    invoke-virtual/range {v2 .. v7}, Landroidx/appcompat/view/menu/ml;->l(Landroidx/appcompat/view/menu/mf;Landroidx/appcompat/view/menu/mf$b;ILandroidx/appcompat/view/menu/mf$b;I)V

    sget-object v2, Landroidx/appcompat/view/menu/mf$b;->o:Landroidx/appcompat/view/menu/mf$b;

    if-ne v8, v2, :cond_9

    iget-object v2, v1, Landroidx/appcompat/view/menu/mf;->e:Landroidx/appcompat/view/menu/jz;

    iget-object v2, v2, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/mf;->P()I

    move-result v3

    iput v3, v2, Landroidx/appcompat/view/menu/zl;->m:I

    goto :goto_3

    :cond_9
    iget-object v2, v1, Landroidx/appcompat/view/menu/mf;->e:Landroidx/appcompat/view/menu/jz;

    iget-object v2, v2, Landroidx/appcompat/view/menu/y71;->e:Landroidx/appcompat/view/menu/zl;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/mf;->P()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/zl;->d(I)V

    iput-boolean v9, v1, Landroidx/appcompat/view/menu/mf;->a:Z

    :cond_a
    :goto_3
    iget-boolean v2, v1, Landroidx/appcompat/view/menu/mf;->a:Z

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroidx/appcompat/view/menu/mf;->f:Landroidx/appcompat/view/menu/k51;

    iget-object v2, v2, Landroidx/appcompat/view/menu/k51;->l:Landroidx/appcompat/view/menu/zl;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/mf;->n()I

    move-result v1

    invoke-virtual {v2, v1}, Landroidx/appcompat/view/menu/zl;->d(I)V

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method public n(Landroidx/appcompat/view/menu/e8$b;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/ml;->g:Landroidx/appcompat/view/menu/e8$b;

    return-void
.end method
