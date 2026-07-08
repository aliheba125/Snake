.class public Landroidx/appcompat/view/menu/bj0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/wi0;


# static fields
.field public static w:[Ljava/lang/Class;


# instance fields
.field public final a:Landroidx/appcompat/view/menu/ui0;

.field public b:Landroidx/appcompat/view/menu/h2;

.field public c:Landroid/content/Context;

.field public d:Landroidx/appcompat/view/menu/nu;

.field public e:Lio/flutter/view/TextureRegistry;

.field public f:Lio/flutter/plugin/editing/c;

.field public g:Landroidx/appcompat/view/menu/yi0;

.field public final h:Landroidx/appcompat/view/menu/d0;

.field public final i:Ljava/util/HashMap;

.field public final j:Ljava/util/HashMap;

.field public final k:Landroid/util/SparseArray;

.field public final l:Landroid/util/SparseArray;

.field public final m:Landroid/util/SparseArray;

.field public final n:Landroid/util/SparseArray;

.field public o:I

.field public p:Z

.field public q:Z

.field public final r:Ljava/util/HashSet;

.field public final s:Ljava/util/HashSet;

.field public final t:Landroidx/appcompat/view/menu/wd0;

.field public u:Z

.field public final v:Landroidx/appcompat/view/menu/yi0$g;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/view/SurfaceView;

    aput-object v2, v0, v1

    sput-object v0, Landroidx/appcompat/view/menu/bj0;->w:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/view/menu/bj0;->o:I

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/bj0;->p:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/appcompat/view/menu/bj0;->q:Z

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/bj0;->u:Z

    new-instance v0, Landroidx/appcompat/view/menu/bj0$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/bj0$a;-><init>(Landroidx/appcompat/view/menu/bj0;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/bj0;->v:Landroidx/appcompat/view/menu/yi0$g;

    new-instance v0, Landroidx/appcompat/view/menu/ui0;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/ui0;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/bj0;->a:Landroidx/appcompat/view/menu/ui0;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/bj0;->i:Ljava/util/HashMap;

    new-instance v0, Landroidx/appcompat/view/menu/d0;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/d0;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/bj0;->h:Landroidx/appcompat/view/menu/d0;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/bj0;->j:Ljava/util/HashMap;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/bj0;->m:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/bj0;->r:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/bj0;->s:Ljava/util/HashSet;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/bj0;->n:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/bj0;->k:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/bj0;->l:Landroid/util/SparseArray;

    invoke-static {}, Landroidx/appcompat/view/menu/wd0;->a()Landroidx/appcompat/view/menu/wd0;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/bj0;->t:Landroidx/appcompat/view/menu/wd0;

    return-void
.end method

.method public static a0(Ljava/lang/Object;F)Landroid/view/MotionEvent$PointerCoords;
    .locals 5

    check-cast p0, Ljava/util/List;

    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    const/4 v1, 0x2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->size:F

    const/4 v1, 0x3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    float-to-double v3, p1

    mul-double/2addr v1, v3

    double-to-float p1, v1

    iput p1, v0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    const/4 p1, 0x4

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    mul-double/2addr v1, v3

    double-to-float p1, v1

    iput p1, v0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    const/4 p1, 0x5

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    mul-double/2addr v1, v3

    double-to-float p1, v1

    iput p1, v0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    const/4 p1, 0x6

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    mul-double/2addr v1, v3

    double-to-float p1, v1

    iput p1, v0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    const/4 p1, 0x7

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    mul-double/2addr v1, v3

    double-to-float p1, v1

    iput p1, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    const/16 p1, 0x8

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    mul-double/2addr p0, v3

    double-to-float p0, p0

    iput p0, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    return-object v0
.end method

.method public static b0(Ljava/lang/Object;F)Ljava/util/List;
    .locals 2

    check-cast p0, Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1}, Landroidx/appcompat/view/menu/bj0;->a0(Ljava/lang/Object;F)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static c0(Ljava/lang/Object;)Landroid/view/MotionEvent$PointerProperties;
    .locals 2

    check-cast p0, Ljava/util/List;

    new-instance v0, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/view/MotionEvent$PointerProperties;->id:I

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, v0, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    return-object v0
.end method

.method public static d0(Ljava/lang/Object;)Ljava/util/List;
    .locals 2

    check-cast p0, Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Landroidx/appcompat/view/menu/bj0;->c0(Ljava/lang/Object;)Landroid/view/MotionEvent$PointerProperties;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static synthetic e(Landroidx/appcompat/view/menu/bj0;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/bj0;->P()V

    return-void
.end method

.method public static synthetic f(Landroidx/appcompat/view/menu/bj0;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/bj0;->I(I)V

    return-void
.end method

.method public static synthetic g(Landroidx/appcompat/view/menu/bj0;Landroidx/appcompat/view/menu/yi0$d;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/bj0;->J(Landroidx/appcompat/view/menu/yi0$d;)V

    return-void
.end method

.method public static synthetic h(Landroidx/appcompat/view/menu/bj0;D)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/bj0;->i0(D)I

    move-result p0

    return p0
.end method

.method public static synthetic i(Landroidx/appcompat/view/menu/bj0;)F
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/bj0;->L()F

    move-result p0

    return p0
.end method

.method public static synthetic j(Landroidx/appcompat/view/menu/bj0;Lio/flutter/plugin/platform/a;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/bj0;->Q(Lio/flutter/plugin/platform/a;)V

    return-void
.end method

.method public static j0(Landroid/view/MotionEvent;[Landroid/view/MotionEvent$PointerCoords;)V
    .locals 3

    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    aget-object v1, p1, v0

    iget v1, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    aget-object p1, p1, v0

    iget p1, p1, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    sub-float/2addr p1, v0

    invoke-virtual {p0, v1, p1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    return-void
.end method

.method public static synthetic k(Landroidx/appcompat/view/menu/bj0;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/bj0;->c:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic l(I)Z
    .locals 0

    invoke-static {p0}, Landroidx/appcompat/view/menu/bj0;->l0(I)Z

    move-result p0

    return p0
.end method

.method public static l0(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static synthetic m(Landroidx/appcompat/view/menu/bj0;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/bj0;->q:Z

    return p1
.end method

.method public static synthetic n(Landroidx/appcompat/view/menu/bj0;Lio/flutter/plugin/platform/a;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/bj0;->k0(Lio/flutter/plugin/platform/a;)V

    return-void
.end method

.method public static synthetic o(Landroidx/appcompat/view/menu/bj0;DF)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/bj0;->g0(DF)I

    move-result p0

    return p0
.end method

.method public static synthetic p(Landroidx/appcompat/view/menu/bj0;Landroidx/appcompat/view/menu/ri0;Landroidx/appcompat/view/menu/yi0$d;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/bj0;->z(Landroidx/appcompat/view/menu/ri0;Landroidx/appcompat/view/menu/yi0$d;)V

    return-void
.end method

.method public static synthetic q(Landroidx/appcompat/view/menu/bj0;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/bj0;->n:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static synthetic r(Landroidx/appcompat/view/menu/bj0;)Lio/flutter/view/TextureRegistry;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/bj0;->e:Lio/flutter/view/TextureRegistry;

    return-object p0
.end method

.method public static synthetic s(Landroidx/appcompat/view/menu/bj0;)Landroidx/appcompat/view/menu/nu;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/bj0;->d:Landroidx/appcompat/view/menu/nu;

    return-object p0
.end method

.method public static synthetic t(Landroidx/appcompat/view/menu/bj0;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/bj0;->k:Landroid/util/SparseArray;

    return-object p0
.end method


# virtual methods
.method public A()Lio/flutter/embedding/engine/FlutterOverlaySurface;
    .locals 5

    new-instance v0, Landroidx/appcompat/view/menu/ji0;

    iget-object v1, p0, Landroidx/appcompat/view/menu/bj0;->d:Landroidx/appcompat/view/menu/nu;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroidx/appcompat/view/menu/bj0;->d:Landroidx/appcompat/view/menu/nu;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Landroidx/appcompat/view/menu/bj0;->d:Landroidx/appcompat/view/menu/nu;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Landroidx/appcompat/view/menu/bj0;->h:Landroidx/appcompat/view/menu/d0;

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/appcompat/view/menu/ji0;-><init>(Landroid/content/Context;IILandroidx/appcompat/view/menu/d0;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/bj0;->B(Landroidx/appcompat/view/menu/ji0;)Lio/flutter/embedding/engine/FlutterOverlaySurface;

    move-result-object v0

    return-object v0
.end method

.method public B(Landroidx/appcompat/view/menu/ji0;)Lio/flutter/embedding/engine/FlutterOverlaySurface;
    .locals 2

    iget v0, p0, Landroidx/appcompat/view/menu/bj0;->o:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroidx/appcompat/view/menu/bj0;->o:I

    iget-object v1, p0, Landroidx/appcompat/view/menu/bj0;->m:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lio/flutter/embedding/engine/FlutterOverlaySurface;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ot;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lio/flutter/embedding/engine/FlutterOverlaySurface;-><init>(ILandroid/view/Surface;)V

    return-object v1
.end method

.method public C(Landroidx/appcompat/view/menu/yi0$d;Z)Landroidx/appcompat/view/menu/ri0;
    .locals 2

    iget-object p2, p0, Landroidx/appcompat/view/menu/bj0;->a:Landroidx/appcompat/view/menu/ui0;

    iget-object v0, p1, Landroidx/appcompat/view/menu/yi0$d;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroidx/appcompat/view/menu/ui0;->a(Ljava/lang/String;)Landroidx/appcompat/view/menu/si0;

    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to create a platform view of unregistered type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroidx/appcompat/view/menu/yi0$d;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public D()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/bj0;->m:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/appcompat/view/menu/bj0;->m:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/ji0;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/ot;->a()V

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/ot;->g()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public E()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/bj0;->g:Landroidx/appcompat/view/menu/yi0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/yi0;->d(Landroidx/appcompat/view/menu/yi0$g;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/bj0;->D()V

    iput-object v1, p0, Landroidx/appcompat/view/menu/bj0;->g:Landroidx/appcompat/view/menu/yi0;

    iput-object v1, p0, Landroidx/appcompat/view/menu/bj0;->c:Landroid/content/Context;

    iput-object v1, p0, Landroidx/appcompat/view/menu/bj0;->e:Lio/flutter/view/TextureRegistry;

    return-void
.end method

.method public F()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Landroidx/appcompat/view/menu/bj0;->n:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroidx/appcompat/view/menu/bj0;->n:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/vi0;

    iget-object v3, p0, Landroidx/appcompat/view/menu/bj0;->d:Landroidx/appcompat/view/menu/nu;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_1
    iget-object v2, p0, Landroidx/appcompat/view/menu/bj0;->l:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroidx/appcompat/view/menu/bj0;->l:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/tt;

    iget-object v3, p0, Landroidx/appcompat/view/menu/bj0;->d:Landroidx/appcompat/view/menu/nu;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/bj0;->D()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/bj0;->e0()V

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/appcompat/view/menu/bj0;->d:Landroidx/appcompat/view/menu/nu;

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/bj0;->p:Z

    iget-object v2, p0, Landroidx/appcompat/view/menu/bj0;->k:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-gtz v2, :cond_2

    return-void

    :cond_2
    iget-object v2, p0, Landroidx/appcompat/view/menu/bj0;->k:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/jy0;->a(Ljava/lang/Object;)V

    throw v1
.end method

.method public G()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/view/menu/bj0;->f:Lio/flutter/plugin/editing/c;

    return-void
.end method

.method public final H()V
    .locals 2

    :goto_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/bj0;->k:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/bj0;->k:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/bj0;->v:Landroidx/appcompat/view/menu/yi0$g;

    invoke-interface {v1, v0}, Landroidx/appcompat/view/menu/yi0$g;->i(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final I(I)V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, p1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to use platform views with API "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", required API level is: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final J(Landroidx/appcompat/view/menu/yi0$d;)V
    .locals 3

    iget v0, p1, Landroidx/appcompat/view/menu/yi0$d;->g:I

    invoke-static {v0}, Landroidx/appcompat/view/menu/bj0;->l0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to create a view with unknown direction value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroidx/appcompat/view/menu/yi0$d;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "(view id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroidx/appcompat/view/menu/yi0$d;->a:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final K(Z)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Landroidx/appcompat/view/menu/bj0;->m:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/16 v3, 0x8

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Landroidx/appcompat/view/menu/bj0;->m:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v4, p0, Landroidx/appcompat/view/menu/bj0;->m:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/ji0;

    iget-object v5, p0, Landroidx/appcompat/view/menu/bj0;->r:Ljava/util/HashSet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroidx/appcompat/view/menu/bj0;->d:Landroidx/appcompat/view/menu/nu;

    invoke-virtual {v2, v4}, Landroidx/appcompat/view/menu/nu;->m(Landroidx/appcompat/view/menu/ot;)V

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/ot;->e()Z

    move-result v2

    and-int/2addr p1, v2

    goto :goto_1

    :cond_0
    iget-boolean v2, p0, Landroidx/appcompat/view/menu/bj0;->p:Z

    if-nez v2, :cond_1

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/ot;->a()V

    :cond_1
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Landroidx/appcompat/view/menu/bj0;->d:Landroidx/appcompat/view/menu/nu;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_2
    iget-object v2, p0, Landroidx/appcompat/view/menu/bj0;->l:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Landroidx/appcompat/view/menu/bj0;->l:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v4, p0, Landroidx/appcompat/view/menu/bj0;->l:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    iget-object v5, p0, Landroidx/appcompat/view/menu/bj0;->s:Ljava/util/HashSet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-nez p1, :cond_3

    iget-boolean v2, p0, Landroidx/appcompat/view/menu/bj0;->q:Z

    if-nez v2, :cond_4

    :cond_3
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_4
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public final L()F
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/bj0;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method public M()Landroidx/appcompat/view/menu/ti0;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/bj0;->a:Landroidx/appcompat/view/menu/ui0;

    return-object v0
.end method

.method public N(I)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/bj0;->k:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/view/menu/jy0;->a(Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Platform view hasn\'t been initialized from the platform view channel."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final O()V
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/bj0;->q:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/bj0;->p:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/bj0;->d:Landroidx/appcompat/view/menu/nu;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/nu;->p()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/bj0;->p:Z

    :cond_0
    return-void
.end method

.method public final synthetic P()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/bj0;->K(Z)V

    return-void
.end method

.method public final Q(Lio/flutter/plugin/platform/a;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/bj0;->f:Lio/flutter/plugin/editing/c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lio/flutter/plugin/editing/c;->s()V

    invoke-virtual {p1}, Lio/flutter/plugin/platform/a;->f()V

    return-void
.end method

.method public R()V
    .locals 0

    return-void
.end method

.method public S()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/bj0;->r:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/bj0;->s:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public T()V
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/bj0;->H()V

    return-void
.end method

.method public U(IIIII)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/bj0;->m:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/bj0;->O()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/bj0;->m:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/ji0;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/appcompat/view/menu/bj0;->d:Landroidx/appcompat/view/menu/nu;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, p4, p5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput p2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput p3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object p2, p0, Landroidx/appcompat/view/menu/bj0;->r:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "The overlay surface (id:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") doesn\'t exist"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public V(IIIIIIILio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack;)V
    .locals 7

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/bj0;->O()V

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/bj0;->N(I)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/bj0;->l:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/tt;

    move-object v1, v0

    move-object v2, p8

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Landroidx/appcompat/view/menu/tt;->a(Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack;IIII)V

    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p2, p6, p7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object p2, p0, Landroidx/appcompat/view/menu/bj0;->k:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/view/menu/jy0;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public W()V
    .locals 2

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/bj0;->p:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/bj0;->s:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Landroidx/appcompat/view/menu/bj0;->p:Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/bj0;->d:Landroidx/appcompat/view/menu/nu;

    new-instance v1, Landroidx/appcompat/view/menu/zi0;

    invoke-direct {v1, p0}, Landroidx/appcompat/view/menu/zi0;-><init>(Landroidx/appcompat/view/menu/bj0;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/nu;->A(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/bj0;->p:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/bj0;->d:Landroidx/appcompat/view/menu/nu;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/nu;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/bj0;->K(Z)V

    return-void
.end method

.method public X()V
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/bj0;->H()V

    return-void
.end method

.method public Y()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/bj0;->i:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/plugin/platform/a;

    invoke-virtual {v1}, Lio/flutter/plugin/platform/a;->h()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public Z(I)V
    .locals 1

    const/16 v0, 0x28

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/bj0;->i:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/plugin/platform/a;

    invoke-virtual {v0}, Lio/flutter/plugin/platform/a;->a()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Lio/flutter/view/a;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/bj0;->h:Landroidx/appcompat/view/menu/d0;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/d0;->b(Lio/flutter/view/a;)V

    return-void
.end method

.method public b(I)Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/bj0;->i:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public c(I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/bj0;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/bj0;->i:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/flutter/plugin/platform/a;

    invoke-virtual {p1}, Lio/flutter/plugin/platform/a;->e()Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/bj0;->k:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/view/menu/jy0;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/bj0;->h:Landroidx/appcompat/view/menu/d0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/d0;->b(Lio/flutter/view/a;)V

    return-void
.end method

.method public final e0()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/bj0;->d:Landroidx/appcompat/view/menu/nu;

    if-nez v0, :cond_0

    const-string v0, "PlatformViewsController"

    const-string v1, "removeOverlaySurfaces called while flutter view is null"

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/ea0;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/bj0;->m:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/appcompat/view/menu/bj0;->d:Landroidx/appcompat/view/menu/nu;

    iget-object v2, p0, Landroidx/appcompat/view/menu/bj0;->m:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/bj0;->m:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public f0(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/bj0;->u:Z

    return-void
.end method

.method public final g0(DF)I
    .locals 2

    float-to-double v0, p3

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-int p1, p1

    return p1
.end method

.method public h0(FLandroidx/appcompat/view/menu/yi0$f;Z)Landroid/view/MotionEvent;
    .locals 20

    move-object/from16 v0, p2

    iget-wide v1, v0, Landroidx/appcompat/view/menu/yi0$f;->p:J

    invoke-static {v1, v2}, Landroidx/appcompat/view/menu/wd0$a;->c(J)Landroidx/appcompat/view/menu/wd0$a;

    move-result-object v1

    move-object/from16 v2, p0

    iget-object v3, v2, Landroidx/appcompat/view/menu/bj0;->t:Landroidx/appcompat/view/menu/wd0;

    invoke-virtual {v3, v1}, Landroidx/appcompat/view/menu/wd0;->b(Landroidx/appcompat/view/menu/wd0$a;)Landroid/view/MotionEvent;

    move-result-object v1

    iget-object v3, v0, Landroidx/appcompat/view/menu/yi0$f;->g:Ljava/lang/Object;

    move/from16 v4, p1

    invoke-static {v3, v4}, Landroidx/appcompat/view/menu/bj0;->b0(Ljava/lang/Object;F)Ljava/util/List;

    move-result-object v3

    iget v4, v0, Landroidx/appcompat/view/menu/yi0$f;->e:I

    new-array v4, v4, [Landroid/view/MotionEvent$PointerCoords;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, [Landroid/view/MotionEvent$PointerCoords;

    if-nez p3, :cond_0

    if-eqz v1, :cond_0

    invoke-static {v1, v11}, Landroidx/appcompat/view/menu/bj0;->j0(Landroid/view/MotionEvent;[Landroid/view/MotionEvent$PointerCoords;)V

    return-object v1

    :cond_0
    iget-object v1, v0, Landroidx/appcompat/view/menu/yi0$f;->f:Ljava/lang/Object;

    invoke-static {v1}, Landroidx/appcompat/view/menu/bj0;->d0(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget v3, v0, Landroidx/appcompat/view/menu/yi0$f;->e:I

    new-array v3, v3, [Landroid/view/MotionEvent$PointerProperties;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, [Landroid/view/MotionEvent$PointerProperties;

    iget-object v1, v0, Landroidx/appcompat/view/menu/yi0$f;->b:Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    iget-object v1, v0, Landroidx/appcompat/view/menu/yi0$f;->c:Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    iget v8, v0, Landroidx/appcompat/view/menu/yi0$f;->d:I

    iget v9, v0, Landroidx/appcompat/view/menu/yi0$f;->e:I

    iget v12, v0, Landroidx/appcompat/view/menu/yi0$f;->h:I

    iget v13, v0, Landroidx/appcompat/view/menu/yi0$f;->i:I

    iget v14, v0, Landroidx/appcompat/view/menu/yi0$f;->j:F

    iget v15, v0, Landroidx/appcompat/view/menu/yi0$f;->k:F

    iget v1, v0, Landroidx/appcompat/view/menu/yi0$f;->l:I

    iget v3, v0, Landroidx/appcompat/view/menu/yi0$f;->m:I

    iget v2, v0, Landroidx/appcompat/view/menu/yi0$f;->n:I

    iget v0, v0, Landroidx/appcompat/view/menu/yi0$f;->o:I

    move/from16 v16, v1

    move/from16 v17, v3

    move/from16 v18, v2

    move/from16 v19, v0

    invoke-static/range {v4 .. v19}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public final i0(D)I
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/bj0;->L()F

    move-result v0

    float-to-double v0, v0

    mul-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-int p1, p1

    return p1
.end method

.method public final k0(Lio/flutter/plugin/platform/a;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/bj0;->f:Lio/flutter/plugin/editing/c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lio/flutter/plugin/editing/c;->E()V

    invoke-virtual {p1}, Lio/flutter/plugin/platform/a;->g()V

    return-void
.end method

.method public u(Landroid/content/Context;Lio/flutter/view/TextureRegistry;Landroidx/appcompat/view/menu/si;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/bj0;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    iput-object p1, p0, Landroidx/appcompat/view/menu/bj0;->c:Landroid/content/Context;

    iput-object p2, p0, Landroidx/appcompat/view/menu/bj0;->e:Lio/flutter/view/TextureRegistry;

    new-instance p1, Landroidx/appcompat/view/menu/yi0;

    invoke-direct {p1, p3}, Landroidx/appcompat/view/menu/yi0;-><init>(Landroidx/appcompat/view/menu/si;)V

    iput-object p1, p0, Landroidx/appcompat/view/menu/bj0;->g:Landroidx/appcompat/view/menu/yi0;

    iget-object p2, p0, Landroidx/appcompat/view/menu/bj0;->v:Landroidx/appcompat/view/menu/yi0$g;

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/yi0;->d(Landroidx/appcompat/view/menu/yi0$g;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "A PlatformViewsController can only be attached to a single output target.\nattach was called while the PlatformViewsController was already attached."

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public v(Lio/flutter/plugin/editing/c;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/bj0;->f:Lio/flutter/plugin/editing/c;

    return-void
.end method

.method public w(Lio/flutter/embedding/engine/renderer/FlutterRenderer;)V
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/h2;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Landroidx/appcompat/view/menu/h2;-><init>(Lio/flutter/embedding/engine/renderer/FlutterRenderer;Z)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/bj0;->b:Landroidx/appcompat/view/menu/h2;

    return-void
.end method

.method public x(Landroidx/appcompat/view/menu/nu;)V
    .locals 3

    iput-object p1, p0, Landroidx/appcompat/view/menu/bj0;->d:Landroidx/appcompat/view/menu/nu;

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/bj0;->n:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/appcompat/view/menu/bj0;->n:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/vi0;

    iget-object v2, p0, Landroidx/appcompat/view/menu/bj0;->d:Landroidx/appcompat/view/menu/nu;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_1
    iget-object v1, p0, Landroidx/appcompat/view/menu/bj0;->l:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/appcompat/view/menu/bj0;->l:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/tt;

    iget-object v2, p0, Landroidx/appcompat/view/menu/bj0;->d:Landroidx/appcompat/view/menu/nu;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/bj0;->k:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Landroidx/appcompat/view/menu/bj0;->k:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/view/menu/jy0;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public y(Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/bj0;->j:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/bj0;->j:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-ne v0, p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    invoke-virtual {v0, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public final z(Landroidx/appcompat/view/menu/ri0;Landroidx/appcompat/view/menu/yi0$d;)V
    .locals 1

    const/16 p1, 0x13

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/bj0;->I(I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Using hybrid composition for platform view: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Landroidx/appcompat/view/menu/yi0$d;->a:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PlatformViewsController"

    invoke-static {p2, p1}, Landroidx/appcompat/view/menu/ea0;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
