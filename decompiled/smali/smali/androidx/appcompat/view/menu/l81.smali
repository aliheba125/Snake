.class public final Landroidx/appcompat/view/menu/l81;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/l81$d;,
        Landroidx/appcompat/view/menu/l81$e;,
        Landroidx/appcompat/view/menu/l81$c;,
        Landroidx/appcompat/view/menu/l81$b;,
        Landroidx/appcompat/view/menu/l81$a;
    }
.end annotation


# instance fields
.field public a:Landroidx/appcompat/view/menu/l81$e;


# direct methods
.method public constructor <init>(ILandroid/view/animation/Interpolator;J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, Landroidx/appcompat/view/menu/l81$d;

    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/l81$d;-><init>(ILandroid/view/animation/Interpolator;J)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/l81;->a:Landroidx/appcompat/view/menu/l81$e;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Landroidx/appcompat/view/menu/l81$c;

    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/l81$c;-><init>(ILandroid/view/animation/Interpolator;J)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/l81;->a:Landroidx/appcompat/view/menu/l81$e;

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/view/WindowInsetsAnimation;)V
    .locals 4

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 4
    invoke-direct {p0, v3, v0, v1, v2}, Landroidx/appcompat/view/menu/l81;-><init>(ILandroid/view/animation/Interpolator;J)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 5
    new-instance v0, Landroidx/appcompat/view/menu/l81$d;

    invoke-direct {v0, p1}, Landroidx/appcompat/view/menu/l81$d;-><init>(Landroid/view/WindowInsetsAnimation;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/l81;->a:Landroidx/appcompat/view/menu/l81$e;

    :cond_0
    return-void
.end method

.method public static d(Landroid/view/View;Landroidx/appcompat/view/menu/l81$b;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/l81$d;->h(Landroid/view/View;Landroidx/appcompat/view/menu/l81$b;)V

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/l81$c;->p(Landroid/view/View;Landroidx/appcompat/view/menu/l81$b;)V

    :goto_0
    return-void
.end method

.method public static f(Landroid/view/WindowInsetsAnimation;)Landroidx/appcompat/view/menu/l81;
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/l81;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/l81;-><init>(Landroid/view/WindowInsetsAnimation;)V

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/l81;->a:Landroidx/appcompat/view/menu/l81$e;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/l81$e;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public b()F
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/l81;->a:Landroidx/appcompat/view/menu/l81$e;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/l81$e;->b()F

    move-result v0

    return v0
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/l81;->a:Landroidx/appcompat/view/menu/l81$e;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/l81$e;->c()I

    move-result v0

    return v0
.end method

.method public e(F)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/l81;->a:Landroidx/appcompat/view/menu/l81$e;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/l81$e;->d(F)V

    return-void
.end method
