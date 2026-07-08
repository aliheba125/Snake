.class public abstract Landroidx/appcompat/view/menu/u50;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/util/ArrayMap;

.field public final b:Landroid/util/ArrayMap;

.field public final c:Landroid/util/ArrayMap;

.field public final d:Landroid/util/ArrayMap;

.field public final e:Landroid/util/ArrayMap;

.field public final f:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/u50;->a:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/u50;->b:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/u50;->c:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/u50;->d:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/u50;->e:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/u50;->f:Landroid/util/ArrayMap;

    return-void
.end method

.method public static e(Landroid/content/Intent;)Landroidx/appcompat/view/menu/uq;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Landroidx/appcompat/view/menu/uq;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/uq;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/util/ArrayMap;Ljava/lang/String;Landroidx/appcompat/view/menu/u6$f;)V
    .locals 6

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/appcompat/view/menu/u6$f;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/u50;->g(I)[Landroidx/appcompat/view/menu/u6$f;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aput-object p3, v0, v2

    goto :goto_1

    :cond_0
    array-length v3, v0

    move v4, v3

    :goto_0
    if-lez v4, :cond_1

    add-int/lit8 v5, v4, -0x1

    aget-object v5, v0, v5

    if-nez v5, :cond_1

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_1
    if-ge v4, v3, :cond_2

    aput-object p3, v0, v4

    goto :goto_1

    :cond_2
    mul-int/lit8 v4, v3, 0x3

    div-int/2addr v4, v1

    invoke-virtual {p0, v4}, Landroidx/appcompat/view/menu/u50;->g(I)[Landroidx/appcompat/view/menu/u6$f;

    move-result-object v1

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object p3, v1, v3

    invoke-virtual {p1, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method public b(Landroidx/appcompat/view/menu/u6$f;)V
    .locals 4

    iget-object v0, p1, Landroidx/appcompat/view/menu/u6$f;->m:Landroid/content/IntentFilter;

    invoke-virtual {v0}, Landroid/content/IntentFilter;->schemesIterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/u50;->d:Landroid/util/ArrayMap;

    const-string v2, "      Scheme: "

    invoke-virtual {p0, p1, v0, v1, v2}, Landroidx/appcompat/view/menu/u50;->k(Landroidx/appcompat/view/menu/u6$f;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/u50;->l(Landroidx/appcompat/view/menu/u6$f;)I

    move-result v1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    iget-object v0, p1, Landroidx/appcompat/view/menu/u6$f;->m:Landroid/content/IntentFilter;

    invoke-virtual {v0}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v2, p0, Landroidx/appcompat/view/menu/u50;->e:Landroid/util/ArrayMap;

    const-string v3, "      Action: "

    invoke-virtual {p0, p1, v0, v2, v3}, Landroidx/appcompat/view/menu/u50;->k(Landroidx/appcompat/view/menu/u6$f;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    :cond_0
    if-eqz v1, :cond_1

    iget-object v0, p1, Landroidx/appcompat/view/menu/u6$f;->m:Landroid/content/IntentFilter;

    invoke-virtual {v0}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/u50;->f:Landroid/util/ArrayMap;

    const-string v2, "      TypedAction: "

    invoke-virtual {p0, p1, v0, v1, v2}, Landroidx/appcompat/view/menu/u50;->k(Landroidx/appcompat/view/menu/u6$f;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public c(Landroidx/appcompat/view/menu/u6$f;Ljava/util/List;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final d(Landroid/content/Intent;Landroidx/appcompat/view/menu/uq;ZZLjava/lang/String;Ljava/lang/String;[Landroidx/appcompat/view/menu/u6$f;Ljava/util/List;I)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v12

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    array-length v4, v1

    move v13, v4

    goto :goto_0

    :cond_0
    move v13, v3

    :goto_0
    move v14, v3

    move v15, v14

    :goto_1
    const/4 v9, 0x1

    const-string v8, "IntentResolver"

    if-ge v14, v13, :cond_f

    aget-object v7, v1, v14

    if-eqz v7, :cond_f

    if-eqz p3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Matching against filter "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroidx/appcompat/view/menu/wu0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz v12, :cond_3

    invoke-virtual {v0, v12, v7}, Landroidx/appcompat/view/menu/u50;->f(Ljava/lang/String;Landroidx/appcompat/view/menu/u6$f;)Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz p3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Filter is not from package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; skipping"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroidx/appcompat/view/menu/wu0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    move/from16 v4, p9

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    goto/16 :goto_5

    :cond_3
    invoke-virtual {v0, v7, v2}, Landroidx/appcompat/view/menu/u50;->c(Landroidx/appcompat/view/menu/u6$f;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz p3, :cond_2

    const-string v3, "  Filter\'s target already added"

    invoke-static {v8, v3}, Landroidx/appcompat/view/menu/wu0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    iget-object v3, v7, Landroidx/appcompat/view/menu/u6$f;->m:Landroid/content/IntentFilter;

    const-string v16, "IntentResolver"

    move-object v4, v10

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object v1, v7

    move-object v7, v11

    move-object/from16 v17, v10

    move-object v10, v8

    move-object/from16 v8, p2

    move-object/from16 v18, v11

    move v11, v9

    move-object/from16 v9, v16

    invoke-virtual/range {v3 .. v9}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_9

    const-string v4, "android.intent.category.DEFAULT"

    if-eqz p3, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  Filter matched!  match=0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " hasDefault="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Landroidx/appcompat/view/menu/u6$f;->m:Landroid/content/IntentFilter;

    invoke-virtual {v6, v4}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroidx/appcompat/view/menu/wu0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    if-eqz p4, :cond_6

    iget-object v5, v1, Landroidx/appcompat/view/menu/u6$f;->m:Landroid/content/IntentFilter;

    invoke-virtual {v5, v4}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    move/from16 v4, p9

    goto :goto_3

    :cond_7
    move/from16 v4, p9

    move v15, v11

    goto :goto_5

    :goto_3
    invoke-virtual {v0, v1, v3, v4}, Landroidx/appcompat/view/menu/u50;->h(Landroidx/appcompat/view/menu/u6$f;II)Ljava/lang/Object;

    move-result-object v1

    if-eqz p3, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    Created result: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroidx/appcompat/view/menu/wu0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    if-eqz v1, :cond_e

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    move/from16 v4, p9

    if-eqz p3, :cond_e

    const/4 v1, -0x4

    if-eq v3, v1, :cond_d

    const/4 v1, -0x3

    if-eq v3, v1, :cond_c

    const/4 v1, -0x2

    if-eq v3, v1, :cond_b

    const/4 v1, -0x1

    if-eq v3, v1, :cond_a

    const-string v1, "unknown reason"

    goto :goto_4

    :cond_a
    const-string v1, "type"

    goto :goto_4

    :cond_b
    const-string v1, "data"

    goto :goto_4

    :cond_c
    const-string v1, "action"

    goto :goto_4

    :cond_d
    const-string v1, "category"

    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Filter did not match: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroidx/appcompat/view/menu/wu0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    :goto_5
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p7

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    goto/16 :goto_1

    :cond_f
    move-object v10, v8

    move v11, v9

    if-eqz p3, :cond_11

    if-eqz v15, :cond_11

    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "resolveIntent failed: found match, but none with CATEGORY_DEFAULT"

    invoke-static {v10, v1}, Landroidx/appcompat/view/menu/wu0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_10
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v11, :cond_11

    const-string v1, "resolveIntent: multiple matches, only some with CATEGORY_DEFAULT"

    invoke-static {v10, v1}, Landroidx/appcompat/view/menu/wu0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    :goto_6
    return-void
.end method

.method public abstract f(Ljava/lang/String;Landroidx/appcompat/view/menu/u6$f;)Z
.end method

.method public abstract g(I)[Landroidx/appcompat/view/menu/u6$f;
.end method

.method public abstract h(Landroidx/appcompat/view/menu/u6$f;II)Ljava/lang/Object;
.end method

.method public i(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;
    .locals 21

    move-object/from16 v10, p0

    move-object/from16 v11, p2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    const/4 v14, 0x0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v15, v1

    goto :goto_0

    :cond_0
    move v15, v14

    :goto_0
    const-string v9, "IntentResolver"

    if-eqz v15, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resolving type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " scheme="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " defaultOnly="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p3

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " userId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p4

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroidx/appcompat/view/menu/wu0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object/from16 v6, p1

    move/from16 v8, p3

    move/from16 v7, p4

    :goto_1
    if-eqz v11, :cond_9

    const/16 v2, 0x2f

    invoke-virtual {v11, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_9

    invoke-virtual {v11, v14, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v0, v2, 0x2

    if-ne v5, v0, :cond_3

    add-int/2addr v2, v1

    invoke-virtual {v11, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, v10, Landroidx/appcompat/view/menu/u50;->b:Landroid/util/ArrayMap;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/appcompat/view/menu/u6$f;

    goto :goto_3

    :cond_3
    :goto_2
    iget-object v0, v10, Landroidx/appcompat/view/menu/u50;->a:Landroid/util/ArrayMap;

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/appcompat/view/menu/u6$f;

    :goto_3
    if-eqz v15, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "First type cut: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroidx/appcompat/view/menu/wu0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v1, v10, Landroidx/appcompat/view/menu/u50;->c:Landroid/util/ArrayMap;

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/appcompat/view/menu/u6$f;

    if-eqz v15, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Second type cut: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroidx/appcompat/view/menu/wu0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v2, v10, Landroidx/appcompat/view/menu/u50;->c:Landroid/util/ArrayMap;

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroidx/appcompat/view/menu/u6$f;

    if-eqz v15, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Third type cut: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroidx/appcompat/view/menu/wu0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    move-object/from16 v17, v1

    move-object/from16 v18, v2

    goto :goto_5

    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, v10, Landroidx/appcompat/view/menu/u50;->f:Landroid/util/ArrayMap;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/appcompat/view/menu/u6$f;

    if-eqz v15, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Typed Action list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroidx/appcompat/view/menu/wu0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_4
    const/16 v17, 0x0

    const/16 v18, 0x0

    goto :goto_5

    :cond_9
    const/4 v0, 0x0

    goto :goto_4

    :goto_5
    if-eqz v12, :cond_b

    iget-object v1, v10, Landroidx/appcompat/view/menu/u50;->d:Landroid/util/ArrayMap;

    invoke-virtual {v1, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/appcompat/view/menu/u6$f;

    if-eqz v15, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scheme list: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroidx/appcompat/view/menu/wu0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    move-object/from16 v16, v1

    goto :goto_6

    :cond_b
    const/16 v16, 0x0

    :goto_6
    if-nez v11, :cond_c

    if-nez v12, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    iget-object v0, v10, Landroidx/appcompat/view/menu/u50;->e:Landroid/util/ArrayMap;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/appcompat/view/menu/u6$f;

    if-eqz v15, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Action list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroidx/appcompat/view/menu/wu0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    move-object/from16 v19, v0

    invoke-static/range {p1 .. p1}, Landroidx/appcompat/view/menu/u50;->e(Landroid/content/Intent;)Landroidx/appcompat/view/menu/uq;

    move-result-object v20

    if-eqz v19, :cond_d

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move v3, v15

    move/from16 v4, p3

    move-object/from16 v5, p2

    move-object v6, v12

    move-object/from16 v7, v19

    move-object v8, v13

    move-object v14, v9

    move/from16 v9, p4

    invoke-virtual/range {v0 .. v9}, Landroidx/appcompat/view/menu/u50;->d(Landroid/content/Intent;Landroidx/appcompat/view/menu/uq;ZZLjava/lang/String;Ljava/lang/String;[Landroidx/appcompat/view/menu/u6$f;Ljava/util/List;I)V

    goto :goto_7

    :cond_d
    move-object v14, v9

    :goto_7
    if-eqz v17, :cond_e

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move v3, v15

    move/from16 v4, p3

    move-object/from16 v5, p2

    move-object v6, v12

    move-object/from16 v7, v17

    move-object v8, v13

    move/from16 v9, p4

    invoke-virtual/range {v0 .. v9}, Landroidx/appcompat/view/menu/u50;->d(Landroid/content/Intent;Landroidx/appcompat/view/menu/uq;ZZLjava/lang/String;Ljava/lang/String;[Landroidx/appcompat/view/menu/u6$f;Ljava/util/List;I)V

    :cond_e
    if-eqz v18, :cond_f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move v3, v15

    move/from16 v4, p3

    move-object/from16 v5, p2

    move-object v6, v12

    move-object/from16 v7, v18

    move-object v8, v13

    move/from16 v9, p4

    invoke-virtual/range {v0 .. v9}, Landroidx/appcompat/view/menu/u50;->d(Landroid/content/Intent;Landroidx/appcompat/view/menu/uq;ZZLjava/lang/String;Ljava/lang/String;[Landroidx/appcompat/view/menu/u6$f;Ljava/util/List;I)V

    :cond_f
    if-eqz v16, :cond_10

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move v3, v15

    move/from16 v4, p3

    move-object/from16 v5, p2

    move-object v6, v12

    move-object/from16 v7, v16

    move-object v8, v13

    move/from16 v9, p4

    invoke-virtual/range {v0 .. v9}, Landroidx/appcompat/view/menu/u50;->d(Landroid/content/Intent;Landroidx/appcompat/view/menu/uq;ZZLjava/lang/String;Ljava/lang/String;[Landroidx/appcompat/view/menu/u6$f;Ljava/util/List;I)V

    :cond_10
    if-eqz v15, :cond_11

    const-string v0, "Final result list:"

    invoke-static {v14, v0}, Landroidx/appcompat/view/menu/wu0;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_8
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroidx/appcompat/view/menu/wu0;->a(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_11
    return-object v13
.end method

.method public j(Landroid/content/Intent;Ljava/lang/String;ZLjava/util/ArrayList;I)Ljava/util/List;
    .locals 16

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v11, v0

    goto :goto_0

    :cond_0
    move v11, v1

    :goto_0
    invoke-static/range {p1 .. p1}, Landroidx/appcompat/view/menu/u50;->e(Landroid/content/Intent;)Landroidx/appcompat/view/menu/uq;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v14

    move v15, v1

    :goto_1
    if-ge v15, v14, :cond_1

    move-object/from16 v9, p4

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, [Landroidx/appcompat/view/menu/u6$f;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v12

    move v3, v11

    move/from16 v4, p3

    move-object/from16 v5, p2

    move-object v6, v13

    move-object v8, v10

    move/from16 v9, p5

    invoke-virtual/range {v0 .. v9}, Landroidx/appcompat/view/menu/u50;->d(Landroid/content/Intent;Landroidx/appcompat/view/menu/uq;ZZLjava/lang/String;Ljava/lang/String;[Landroidx/appcompat/view/menu/u6$f;Ljava/util/List;I)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_1
    return-object v10
.end method

.method public final k(Landroidx/appcompat/view/menu/u6$f;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I
    .locals 1

    const/4 p4, 0x0

    if-nez p2, :cond_0

    return p4

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    add-int/lit8 p4, p4, 0x1

    invoke-virtual {p0, p3, v0, p1}, Landroidx/appcompat/view/menu/u50;->a(Landroid/util/ArrayMap;Ljava/lang/String;Landroidx/appcompat/view/menu/u6$f;)V

    goto :goto_0

    :cond_1
    return p4
.end method

.method public final l(Landroidx/appcompat/view/menu/u6$f;)I
    .locals 8

    iget-object v0, p1, Landroidx/appcompat/view/menu/u6$f;->m:Landroid/content/IntentFilter;

    invoke-virtual {v0}, Landroid/content/IntentFilter;->typesIterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/*"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v7, v5

    move-object v5, v3

    move-object v3, v7

    :goto_1
    iget-object v6, p0, Landroidx/appcompat/view/menu/u50;->a:Landroid/util/ArrayMap;

    invoke-virtual {p0, v6, v3, p1}, Landroidx/appcompat/view/menu/u50;->a(Landroid/util/ArrayMap;Ljava/lang/String;Landroidx/appcompat/view/menu/u6$f;)V

    if-lez v4, :cond_2

    iget-object v3, p0, Landroidx/appcompat/view/menu/u50;->b:Landroid/util/ArrayMap;

    invoke-virtual {p0, v3, v5, p1}, Landroidx/appcompat/view/menu/u50;->a(Landroid/util/ArrayMap;Ljava/lang/String;Landroidx/appcompat/view/menu/u6$f;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Landroidx/appcompat/view/menu/u50;->c:Landroid/util/ArrayMap;

    invoke-virtual {p0, v3, v5, p1}, Landroidx/appcompat/view/menu/u50;->a(Landroid/util/ArrayMap;Ljava/lang/String;Landroidx/appcompat/view/menu/u6$f;)V

    goto :goto_0

    :cond_3
    return v2
.end method

.method public m(Landroidx/appcompat/view/menu/u6$f;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/u50;->n(Landroidx/appcompat/view/menu/u6$f;)V

    return-void
.end method

.method public n(Landroidx/appcompat/view/menu/u6$f;)V
    .locals 4

    iget-object v0, p1, Landroidx/appcompat/view/menu/u6$f;->m:Landroid/content/IntentFilter;

    invoke-virtual {v0}, Landroid/content/IntentFilter;->schemesIterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/u50;->d:Landroid/util/ArrayMap;

    const-string v2, "      Scheme: "

    invoke-virtual {p0, p1, v0, v1, v2}, Landroidx/appcompat/view/menu/u50;->p(Landroidx/appcompat/view/menu/u6$f;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/u50;->q(Landroidx/appcompat/view/menu/u6$f;)I

    move-result v1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    iget-object v0, p1, Landroidx/appcompat/view/menu/u6$f;->m:Landroid/content/IntentFilter;

    invoke-virtual {v0}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v2, p0, Landroidx/appcompat/view/menu/u50;->e:Landroid/util/ArrayMap;

    const-string v3, "      Action: "

    invoke-virtual {p0, p1, v0, v2, v3}, Landroidx/appcompat/view/menu/u50;->p(Landroidx/appcompat/view/menu/u6$f;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    :cond_0
    if-eqz v1, :cond_1

    iget-object v0, p1, Landroidx/appcompat/view/menu/u6$f;->m:Landroid/content/IntentFilter;

    invoke-virtual {v0}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/u50;->f:Landroid/util/ArrayMap;

    const-string v2, "      TypedAction: "

    invoke-virtual {p0, p1, v0, v1, v2}, Landroidx/appcompat/view/menu/u50;->p(Landroidx/appcompat/view/menu/u6$f;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public final o(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/appcompat/view/menu/u6$f;

    if-eqz v0, :cond_5

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    aget-object v2, v0, v1

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_1
    if-ltz v1, :cond_3

    aget-object v3, v0, v1

    if-ne v3, p3, :cond_2

    sub-int v3, v2, v1

    if-lez v3, :cond_1

    add-int/lit8 v4, v1, 0x1

    invoke-static {v0, v4, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    const/4 v3, 0x0

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, -0x1

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    if-gez v2, :cond_4

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    array-length p3, v0

    div-int/lit8 p3, p3, 0x2

    if-ge v2, p3, :cond_5

    add-int/lit8 p3, v2, 0x2

    invoke-virtual {p0, p3}, Landroidx/appcompat/view/menu/u50;->g(I)[Landroidx/appcompat/view/menu/u6$f;

    move-result-object p3

    add-int/lit8 v2, v2, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1, p3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p1, p2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_2
    return-void
.end method

.method public final p(Landroidx/appcompat/view/menu/u6$f;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I
    .locals 1

    const/4 p4, 0x0

    if-nez p2, :cond_0

    return p4

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    add-int/lit8 p4, p4, 0x1

    invoke-virtual {p0, p3, v0, p1}, Landroidx/appcompat/view/menu/u50;->o(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return p4
.end method

.method public final q(Landroidx/appcompat/view/menu/u6$f;)I
    .locals 8

    iget-object v0, p1, Landroidx/appcompat/view/menu/u6$f;->m:Landroid/content/IntentFilter;

    invoke-virtual {v0}, Landroid/content/IntentFilter;->typesIterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/*"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v7, v5

    move-object v5, v3

    move-object v3, v7

    :goto_1
    iget-object v6, p0, Landroidx/appcompat/view/menu/u50;->a:Landroid/util/ArrayMap;

    invoke-virtual {p0, v6, v3, p1}, Landroidx/appcompat/view/menu/u50;->o(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    if-lez v4, :cond_2

    iget-object v3, p0, Landroidx/appcompat/view/menu/u50;->b:Landroid/util/ArrayMap;

    invoke-virtual {p0, v3, v5, p1}, Landroidx/appcompat/view/menu/u50;->o(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Landroidx/appcompat/view/menu/u50;->c:Landroid/util/ArrayMap;

    invoke-virtual {p0, v3, v5, p1}, Landroidx/appcompat/view/menu/u50;->o(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    return v2
.end method
