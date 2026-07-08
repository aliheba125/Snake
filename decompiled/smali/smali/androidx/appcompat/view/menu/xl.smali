.class public Landroidx/appcompat/view/menu/xl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/xl$b;,
        Landroidx/appcompat/view/menu/xl$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroidx/appcompat/view/menu/yl;

.field public final c:Landroidx/appcompat/view/menu/xl$b;

.field public final d:Landroidx/appcompat/view/menu/xl$a;

.field public e:Landroid/view/VelocityTracker;

.field public f:F

.field public g:I

.field public h:I

.field public i:I

.field public final j:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/view/menu/yl;)V
    .locals 2

    .line 1
    new-instance v0, Landroidx/appcompat/view/menu/vl;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/vl;-><init>()V

    new-instance v1, Landroidx/appcompat/view/menu/wl;

    invoke-direct {v1}, Landroidx/appcompat/view/menu/wl;-><init>()V

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/appcompat/view/menu/xl;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/yl;Landroidx/appcompat/view/menu/xl$b;Landroidx/appcompat/view/menu/xl$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/view/menu/yl;Landroidx/appcompat/view/menu/xl$b;Landroidx/appcompat/view/menu/xl$a;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/appcompat/view/menu/xl;->g:I

    iput v0, p0, Landroidx/appcompat/view/menu/xl;->h:I

    iput v0, p0, Landroidx/appcompat/view/menu/xl;->i:I

    const v0, 0x7fffffff

    const/4 v1, 0x0

    filled-new-array {v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/xl;->j:[I

    iput-object p1, p0, Landroidx/appcompat/view/menu/xl;->a:Landroid/content/Context;

    iput-object p2, p0, Landroidx/appcompat/view/menu/xl;->b:Landroidx/appcompat/view/menu/yl;

    iput-object p3, p0, Landroidx/appcompat/view/menu/xl;->c:Landroidx/appcompat/view/menu/xl$b;

    iput-object p4, p0, Landroidx/appcompat/view/menu/xl;->d:Landroidx/appcompat/view/menu/xl$a;

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;[ILandroid/view/MotionEvent;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/xl;->c(Landroid/content/Context;[ILandroid/view/MotionEvent;I)V

    return-void
.end method

.method public static synthetic b(Landroid/view/VelocityTracker;Landroid/view/MotionEvent;I)F
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/appcompat/view/menu/xl;->f(Landroid/view/VelocityTracker;Landroid/view/MotionEvent;I)F

    move-result p0

    return p0
.end method

.method public static c(Landroid/content/Context;[ILandroid/view/MotionEvent;I)V
    .locals 3

    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    invoke-static {p0, v0, v1, p3, v2}, Landroidx/appcompat/view/menu/q51;->g(Landroid/content/Context;Landroid/view/ViewConfiguration;III)I

    move-result v1

    const/4 v2, 0x0

    aput v1, p1, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result p2

    invoke-static {p0, v0, v1, p3, p2}, Landroidx/appcompat/view/menu/q51;->f(Landroid/content/Context;Landroid/view/ViewConfiguration;III)I

    move-result p0

    const/4 p2, 0x1

    aput p0, p1, p2

    return-void
.end method

.method public static f(Landroid/view/VelocityTracker;Landroid/view/MotionEvent;I)F
    .locals 0

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/c51;->a(Landroid/view/VelocityTracker;Landroid/view/MotionEvent;)V

    const/16 p1, 0x3e8

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/c51;->b(Landroid/view/VelocityTracker;I)V

    invoke-static {p0, p2}, Landroidx/appcompat/view/menu/c51;->d(Landroid/view/VelocityTracker;I)F

    move-result p0

    return p0
.end method


# virtual methods
.method public final d(Landroid/view/MotionEvent;I)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v1

    iget v2, p0, Landroidx/appcompat/view/menu/xl;->h:I

    if-ne v2, v0, :cond_1

    iget v2, p0, Landroidx/appcompat/view/menu/xl;->i:I

    if-ne v2, v1, :cond_1

    iget v2, p0, Landroidx/appcompat/view/menu/xl;->g:I

    if-eq v2, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    iget-object v2, p0, Landroidx/appcompat/view/menu/xl;->c:Landroidx/appcompat/view/menu/xl$b;

    iget-object v3, p0, Landroidx/appcompat/view/menu/xl;->a:Landroid/content/Context;

    iget-object v4, p0, Landroidx/appcompat/view/menu/xl;->j:[I

    invoke-interface {v2, v3, v4, p1, p2}, Landroidx/appcompat/view/menu/xl$b;->a(Landroid/content/Context;[ILandroid/view/MotionEvent;I)V

    iput v0, p0, Landroidx/appcompat/view/menu/xl;->h:I

    iput v1, p0, Landroidx/appcompat/view/menu/xl;->i:I

    iput p2, p0, Landroidx/appcompat/view/menu/xl;->g:I

    const/4 p1, 0x1

    return p1
.end method

.method public final e(Landroid/view/MotionEvent;I)F
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/xl;->e:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/xl;->e:Landroid/view/VelocityTracker;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/xl;->d:Landroidx/appcompat/view/menu/xl$a;

    iget-object v1, p0, Landroidx/appcompat/view/menu/xl;->e:Landroid/view/VelocityTracker;

    invoke-interface {v0, v1, p1, p2}, Landroidx/appcompat/view/menu/xl$a;->a(Landroid/view/VelocityTracker;Landroid/view/MotionEvent;I)F

    move-result p1

    return p1
.end method

.method public g(Landroid/view/MotionEvent;I)V
    .locals 4

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/xl;->d(Landroid/view/MotionEvent;I)Z

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/xl;->j:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    const v3, 0x7fffffff

    if-ne v1, v3, :cond_1

    iget-object p1, p0, Landroidx/appcompat/view/menu/xl;->e:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/appcompat/view/menu/xl;->e:Landroid/view/VelocityTracker;

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/xl;->e(Landroid/view/MotionEvent;I)F

    move-result p1

    iget-object p2, p0, Landroidx/appcompat/view/menu/xl;->b:Landroidx/appcompat/view/menu/yl;

    invoke-interface {p2}, Landroidx/appcompat/view/menu/yl;->b()F

    move-result p2

    mul-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p2

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget v0, p0, Landroidx/appcompat/view/menu/xl;->f:F

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_3

    cmpl-float p2, p2, v1

    if-eqz p2, :cond_3

    :cond_2
    iget-object p2, p0, Landroidx/appcompat/view/menu/xl;->b:Landroidx/appcompat/view/menu/yl;

    invoke-interface {p2}, Landroidx/appcompat/view/menu/yl;->c()V

    :cond_3
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget-object v0, p0, Landroidx/appcompat/view/menu/xl;->j:[I

    aget v2, v0, v2

    int-to-float v2, v2

    cmpg-float p2, p2, v2

    if-gez p2, :cond_4

    return-void

    :cond_4
    const/4 p2, 0x1

    aget p2, v0, p2

    neg-int v0, p2

    int-to-float v0, v0

    int-to-float p2, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget-object p2, p0, Landroidx/appcompat/view/menu/xl;->b:Landroidx/appcompat/view/menu/yl;

    invoke-interface {p2, p1}, Landroidx/appcompat/view/menu/yl;->a(F)Z

    move-result p2

    if-eqz p2, :cond_5

    move v1, p1

    :cond_5
    iput v1, p0, Landroidx/appcompat/view/menu/xl;->f:F

    return-void
.end method
