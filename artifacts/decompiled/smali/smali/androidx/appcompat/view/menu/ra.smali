.class public Landroidx/appcompat/view/menu/ra;
.super Landroidx/appcompat/view/menu/s11;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/ra$k;
    }
.end annotation


# static fields
.field public static final Y:[Ljava/lang/String;

.field public static final Z:Landroid/util/Property;

.field public static final a0:Landroid/util/Property;

.field public static final b0:Landroid/util/Property;

.field public static final c0:Landroid/util/Property;

.field public static final d0:Landroid/util/Property;

.field public static final e0:Landroid/util/Property;

.field public static f0:Landroidx/appcompat/view/menu/yn0;


# instance fields
.field public V:[I

.field public W:Z

.field public X:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "android:changeBounds:windowX"

    const-string v1, "android:changeBounds:windowY"

    const-string v2, "android:changeBounds:bounds"

    const-string v3, "android:changeBounds:clip"

    const-string v4, "android:changeBounds:parent"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/ra;->Y:[Ljava/lang/String;

    new-instance v0, Landroidx/appcompat/view/menu/ra$b;

    const-string v1, "boundsOrigin"

    const-class v2, Landroid/graphics/PointF;

    invoke-direct {v0, v2, v1}, Landroidx/appcompat/view/menu/ra$b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/appcompat/view/menu/ra;->Z:Landroid/util/Property;

    new-instance v0, Landroidx/appcompat/view/menu/ra$c;

    const-string v1, "topLeft"

    invoke-direct {v0, v2, v1}, Landroidx/appcompat/view/menu/ra$c;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/appcompat/view/menu/ra;->a0:Landroid/util/Property;

    new-instance v0, Landroidx/appcompat/view/menu/ra$d;

    const-string v3, "bottomRight"

    invoke-direct {v0, v2, v3}, Landroidx/appcompat/view/menu/ra$d;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/appcompat/view/menu/ra;->b0:Landroid/util/Property;

    new-instance v0, Landroidx/appcompat/view/menu/ra$e;

    invoke-direct {v0, v2, v3}, Landroidx/appcompat/view/menu/ra$e;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/appcompat/view/menu/ra;->c0:Landroid/util/Property;

    new-instance v0, Landroidx/appcompat/view/menu/ra$f;

    invoke-direct {v0, v2, v1}, Landroidx/appcompat/view/menu/ra$f;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/appcompat/view/menu/ra;->d0:Landroid/util/Property;

    new-instance v0, Landroidx/appcompat/view/menu/ra$g;

    const-string v1, "position"

    invoke-direct {v0, v2, v1}, Landroidx/appcompat/view/menu/ra$g;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/appcompat/view/menu/ra;->e0:Landroid/util/Property;

    new-instance v0, Landroidx/appcompat/view/menu/yn0;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/yn0;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/ra;->f0:Landroidx/appcompat/view/menu/yn0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/view/menu/s11;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/appcompat/view/menu/ra;->V:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/ra;->W:Z

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/ra;->X:Z

    return-void
.end method


# virtual methods
.method public G()[Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/ra;->Y:[Ljava/lang/String;

    return-object v0
.end method

.method public final f0(Landroidx/appcompat/view/menu/y11;)V
    .locals 7

    iget-object v0, p1, Landroidx/appcompat/view/menu/y11;->b:Landroid/view/View;

    invoke-static {v0}, Landroidx/appcompat/view/menu/m51;->O(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p1, Landroidx/appcompat/view/menu/y11;->a:Ljava/util/Map;

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v3, "android:changeBounds:bounds"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Landroidx/appcompat/view/menu/y11;->a:Ljava/util/Map;

    iget-object v2, p1, Landroidx/appcompat/view/menu/y11;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const-string v3, "android:changeBounds:parent"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Landroidx/appcompat/view/menu/ra;->X:Z

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroidx/appcompat/view/menu/y11;->b:Landroid/view/View;

    iget-object v2, p0, Landroidx/appcompat/view/menu/ra;->V:[I

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v1, p1, Landroidx/appcompat/view/menu/y11;->a:Ljava/util/Map;

    iget-object v2, p0, Landroidx/appcompat/view/menu/ra;->V:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android:changeBounds:windowX"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Landroidx/appcompat/view/menu/y11;->a:Ljava/util/Map;

    iget-object v2, p0, Landroidx/appcompat/view/menu/ra;->V:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android:changeBounds:windowY"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-boolean v1, p0, Landroidx/appcompat/view/menu/ra;->W:Z

    if-eqz v1, :cond_2

    iget-object p1, p1, Landroidx/appcompat/view/menu/y11;->a:Ljava/util/Map;

    const-string v1, "android:changeBounds:clip"

    invoke-static {v0}, Landroidx/appcompat/view/menu/m51;->q(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public g(Landroidx/appcompat/view/menu/y11;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/ra;->f0(Landroidx/appcompat/view/menu/y11;)V

    return-void
.end method

.method public final g0(Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/ra;->X:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, v1}, Landroidx/appcompat/view/menu/s11;->w(Landroid/view/View;Z)Landroidx/appcompat/view/menu/y11;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    iget-object p1, v0, Landroidx/appcompat/view/menu/y11;->b:Landroid/view/View;

    if-ne p2, p1, :cond_0

    :cond_2
    :goto_0
    return v1
.end method

.method public j(Landroidx/appcompat/view/menu/y11;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/ra;->f0(Landroidx/appcompat/view/menu/y11;)V

    return-void
.end method

.method public q(Landroid/view/ViewGroup;Landroidx/appcompat/view/menu/y11;Landroidx/appcompat/view/menu/y11;)Landroid/animation/Animator;
    .locals 18

    move-object/from16 v8, p0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_c

    :cond_1
    iget-object v3, v0, Landroidx/appcompat/view/menu/y11;->a:Ljava/util/Map;

    iget-object v4, v1, Landroidx/appcompat/view/menu/y11;->a:Ljava/util/Map;

    const-string v5, "android:changeBounds:parent"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    if-nez v4, :cond_3

    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_c

    :cond_3
    iget-object v9, v1, Landroidx/appcompat/view/menu/y11;->b:Landroid/view/View;

    invoke-virtual {v8, v3, v4}, Landroidx/appcompat/view/menu/ra;->g0(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1a

    iget-object v3, v0, Landroidx/appcompat/view/menu/y11;->a:Ljava/util/Map;

    const-string v5, "android:changeBounds:bounds"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    iget-object v6, v1, Landroidx/appcompat/view/menu/y11;->a:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    iget v6, v3, Landroid/graphics/Rect;->left:I

    iget v7, v5, Landroid/graphics/Rect;->left:I

    iget v11, v3, Landroid/graphics/Rect;->top:I

    iget v12, v5, Landroid/graphics/Rect;->top:I

    iget v13, v3, Landroid/graphics/Rect;->right:I

    iget v14, v5, Landroid/graphics/Rect;->right:I

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v15, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v13, v6

    sub-int v2, v3, v11

    sub-int v10, v14, v7

    sub-int v4, v15, v12

    iget-object v0, v0, Landroidx/appcompat/view/menu/y11;->a:Ljava/util/Map;

    move-object/from16 v16, v9

    const-string v9, "android:changeBounds:clip"

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iget-object v1, v1, Landroidx/appcompat/view/menu/y11;->a:Ljava/util/Map;

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/graphics/Rect;

    if-eqz v5, :cond_4

    if-nez v2, :cond_5

    :cond_4
    if-eqz v10, :cond_9

    if-eqz v4, :cond_9

    :cond_5
    if-ne v6, v7, :cond_7

    if-eq v11, v12, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    goto :goto_1

    :cond_7
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-ne v13, v14, :cond_8

    if-eq v3, v15, :cond_a

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_9
    const/4 v1, 0x0

    :cond_a
    :goto_2
    if-eqz v0, :cond_b

    invoke-virtual {v0, v9}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    :cond_b
    if-nez v0, :cond_d

    if-eqz v9, :cond_d

    :cond_c
    add-int/lit8 v1, v1, 0x1

    :cond_d
    if-lez v1, :cond_19

    move-object/from16 p1, v9

    iget-boolean v9, v8, Landroidx/appcompat/view/menu/ra;->W:Z

    if-nez v9, :cond_12

    move-object/from16 v9, v16

    invoke-static {v9, v6, v11, v13, v3}, Landroidx/appcompat/view/menu/n61;->f(Landroid/view/View;IIII)V

    const/4 v0, 0x2

    if-ne v1, v0, :cond_f

    if-ne v5, v10, :cond_e

    if-ne v2, v4, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/s11;->y()Landroidx/appcompat/view/menu/sh0;

    move-result-object v0

    int-to-float v1, v6

    int-to-float v2, v11

    int-to-float v3, v7

    int-to-float v4, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/appcompat/view/menu/sh0;->a(FFFF)Landroid/graphics/Path;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/view/menu/ra;->e0:Landroid/util/Property;

    invoke-static {v9, v1, v0}, Landroidx/appcompat/view/menu/rf0;->a(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto/16 :goto_9

    :cond_e
    new-instance v1, Landroidx/appcompat/view/menu/ra$k;

    invoke-direct {v1, v9}, Landroidx/appcompat/view/menu/ra$k;-><init>(Landroid/view/View;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/s11;->y()Landroidx/appcompat/view/menu/sh0;

    move-result-object v2

    int-to-float v4, v6

    int-to-float v5, v11

    int-to-float v6, v7

    int-to-float v7, v12

    invoke-virtual {v2, v4, v5, v6, v7}, Landroidx/appcompat/view/menu/sh0;->a(FFFF)Landroid/graphics/Path;

    move-result-object v2

    sget-object v4, Landroidx/appcompat/view/menu/ra;->a0:Landroid/util/Property;

    invoke-static {v1, v4, v2}, Landroidx/appcompat/view/menu/rf0;->a(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/s11;->y()Landroidx/appcompat/view/menu/sh0;

    move-result-object v4

    int-to-float v5, v13

    int-to-float v3, v3

    int-to-float v6, v14

    int-to-float v7, v15

    invoke-virtual {v4, v5, v3, v6, v7}, Landroidx/appcompat/view/menu/sh0;->a(FFFF)Landroid/graphics/Path;

    move-result-object v3

    sget-object v4, Landroidx/appcompat/view/menu/ra;->b0:Landroid/util/Property;

    invoke-static {v1, v4, v3}, Landroidx/appcompat/view/menu/rf0;->a(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v2, v0, v5

    const/4 v2, 0x1

    aput-object v3, v0, v2

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v0, Landroidx/appcompat/view/menu/ra$h;

    invoke-direct {v0, v8, v1}, Landroidx/appcompat/view/menu/ra$h;-><init>(Landroidx/appcompat/view/menu/ra;Landroidx/appcompat/view/menu/ra$k;)V

    invoke-virtual {v4, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object v0, v4

    goto/16 :goto_9

    :cond_f
    if-ne v6, v7, :cond_11

    if-eq v11, v12, :cond_10

    goto :goto_3

    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/s11;->y()Landroidx/appcompat/view/menu/sh0;

    move-result-object v0

    int-to-float v1, v13

    int-to-float v2, v3

    int-to-float v3, v14

    int-to-float v4, v15

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/appcompat/view/menu/sh0;->a(FFFF)Landroid/graphics/Path;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/view/menu/ra;->c0:Landroid/util/Property;

    invoke-static {v9, v1, v0}, Landroidx/appcompat/view/menu/rf0;->a(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto/16 :goto_9

    :cond_11
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/s11;->y()Landroidx/appcompat/view/menu/sh0;

    move-result-object v0

    int-to-float v1, v6

    int-to-float v2, v11

    int-to-float v3, v7

    int-to-float v4, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/appcompat/view/menu/sh0;->a(FFFF)Landroid/graphics/Path;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/view/menu/ra;->d0:Landroid/util/Property;

    invoke-static {v9, v1, v0}, Landroidx/appcompat/view/menu/rf0;->a(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto/16 :goto_9

    :cond_12
    move-object/from16 v9, v16

    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v1, v6

    add-int/2addr v3, v11

    invoke-static {v9, v6, v11, v1, v3}, Landroidx/appcompat/view/menu/n61;->f(Landroid/view/View;IIII)V

    if-ne v6, v7, :cond_14

    if-eq v11, v12, :cond_13

    goto :goto_4

    :cond_13
    const/4 v11, 0x0

    goto :goto_5

    :cond_14
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/s11;->y()Landroidx/appcompat/view/menu/sh0;

    move-result-object v1

    int-to-float v3, v6

    int-to-float v6, v11

    int-to-float v11, v7

    int-to-float v13, v12

    invoke-virtual {v1, v3, v6, v11, v13}, Landroidx/appcompat/view/menu/sh0;->a(FFFF)Landroid/graphics/Path;

    move-result-object v1

    sget-object v3, Landroidx/appcompat/view/menu/ra;->e0:Landroid/util/Property;

    invoke-static {v9, v3, v1}, Landroidx/appcompat/view/menu/rf0;->a(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    move-object v11, v1

    :goto_5
    if-nez v0, :cond_15

    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v5, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_6

    :cond_15
    const/4 v1, 0x0

    :goto_6
    if-nez p1, :cond_16

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v1, v1, v10, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_7

    :cond_16
    move-object/from16 v2, p1

    :goto_7
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    invoke-static {v9, v0}, Landroidx/appcompat/view/menu/m51;->r0(Landroid/view/View;Landroid/graphics/Rect;)V

    sget-object v1, Landroidx/appcompat/view/menu/ra;->f0:Landroidx/appcompat/view/menu/yn0;

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "clipBounds"

    invoke-static {v9, v2, v1, v0}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v10

    new-instance v13, Landroidx/appcompat/view/menu/ra$i;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object v2, v9

    move-object/from16 v3, p1

    move v4, v7

    move v5, v12

    move v6, v14

    move v7, v15

    invoke-direct/range {v0 .. v7}, Landroidx/appcompat/view/menu/ra$i;-><init>(Landroidx/appcompat/view/menu/ra;Landroid/view/View;Landroid/graphics/Rect;IIII)V

    invoke-virtual {v10, v13}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object v2, v10

    goto :goto_8

    :cond_17
    const/4 v2, 0x0

    :goto_8
    invoke-static {v11, v2}, Landroidx/appcompat/view/menu/x11;->c(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v0

    :goto_9
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_18

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroidx/appcompat/view/menu/w51;->c(Landroid/view/ViewGroup;Z)V

    new-instance v2, Landroidx/appcompat/view/menu/ra$j;

    invoke-direct {v2, v8, v1}, Landroidx/appcompat/view/menu/ra$j;-><init>(Landroidx/appcompat/view/menu/ra;Landroid/view/ViewGroup;)V

    invoke-virtual {v8, v2}, Landroidx/appcompat/view/menu/s11;->a(Landroidx/appcompat/view/menu/s11$f;)Landroidx/appcompat/view/menu/s11;

    :cond_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_a

    :cond_1a
    iget-object v2, v0, Landroidx/appcompat/view/menu/y11;->a:Ljava/util/Map;

    const-string v3, "android:changeBounds:windowX"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, v0, Landroidx/appcompat/view/menu/y11;->a:Ljava/util/Map;

    const-string v4, "android:changeBounds:windowY"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v5, v1, Landroidx/appcompat/view/menu/y11;->a:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v1, v1, Landroidx/appcompat/view/menu/y11;->a:Ljava/util/Map;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v2, v3, :cond_1b

    if-eq v0, v1, :cond_19

    goto :goto_b

    :goto_a
    return-object v0

    :cond_1b
    :goto_b
    iget-object v4, v8, Landroidx/appcompat/view/menu/ra;->V:[I

    move-object/from16 v5, p1

    invoke-virtual {v5, v4}, Landroid/view/View;->getLocationInWindow([I)V

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v9, v6}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {v9}, Landroidx/appcompat/view/menu/n61;->c(Landroid/view/View;)F

    move-result v7

    const/4 v4, 0x0

    invoke-static {v9, v4}, Landroidx/appcompat/view/menu/n61;->g(Landroid/view/View;F)V

    invoke-static/range {p1 .. p1}, Landroidx/appcompat/view/menu/n61;->b(Landroid/view/View;)Landroidx/appcompat/view/menu/f61;

    move-result-object v4

    invoke-interface {v4, v6}, Landroidx/appcompat/view/menu/f61;->b(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/s11;->y()Landroidx/appcompat/view/menu/sh0;

    move-result-object v4

    iget-object v10, v8, Landroidx/appcompat/view/menu/ra;->V:[I

    const/4 v11, 0x0

    aget v12, v10, v11

    sub-int/2addr v2, v12

    int-to-float v2, v2

    const/4 v11, 0x1

    aget v10, v10, v11

    sub-int/2addr v0, v10

    int-to-float v0, v0

    sub-int/2addr v3, v12

    int-to-float v3, v3

    sub-int/2addr v1, v10

    int-to-float v1, v1

    invoke-virtual {v4, v2, v0, v3, v1}, Landroidx/appcompat/view/menu/sh0;->a(FFFF)Landroid/graphics/Path;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/view/menu/ra;->Z:Landroid/util/Property;

    invoke-static {v1, v0}, Landroidx/appcompat/view/menu/tk0;->a(Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    new-array v1, v11, [Landroid/animation/PropertyValuesHolder;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v6, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v10

    new-instance v11, Landroidx/appcompat/view/menu/ra$a;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v6

    move-object v4, v9

    move v5, v7

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/view/menu/ra$a;-><init>(Landroidx/appcompat/view/menu/ra;Landroid/view/ViewGroup;Landroid/graphics/drawable/BitmapDrawable;Landroid/view/View;F)V

    invoke-virtual {v10, v11}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v10

    :goto_c
    return-object v0
.end method
