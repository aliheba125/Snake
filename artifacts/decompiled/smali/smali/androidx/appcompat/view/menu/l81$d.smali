.class public Landroidx/appcompat/view/menu/l81$d;
.super Landroidx/appcompat/view/menu/l81$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/l81;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/l81$d$a;
    }
.end annotation


# instance fields
.field public final e:Landroid/view/WindowInsetsAnimation;


# direct methods
.method public constructor <init>(ILandroid/view/animation/Interpolator;J)V
    .locals 0

    .line 2
    invoke-static {p1, p2, p3, p4}, Landroidx/appcompat/view/menu/r81;->a(ILandroid/view/animation/Interpolator;J)Landroid/view/WindowInsetsAnimation;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/l81$d;-><init>(Landroid/view/WindowInsetsAnimation;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/WindowInsetsAnimation;)V
    .locals 4

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 1
    invoke-direct {p0, v3, v0, v1, v2}, Landroidx/appcompat/view/menu/l81$e;-><init>(ILandroid/view/animation/Interpolator;J)V

    iput-object p1, p0, Landroidx/appcompat/view/menu/l81$d;->e:Landroid/view/WindowInsetsAnimation;

    return-void
.end method

.method public static e(Landroidx/appcompat/view/menu/l81$a;)Landroid/view/WindowInsetsAnimation$Bounds;
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/t81;->a()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/l81$a;->a()Landroidx/appcompat/view/menu/h50;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/h50;->e()Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/l81$a;->b()Landroidx/appcompat/view/menu/h50;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/h50;->e()Landroid/graphics/Insets;

    move-result-object p0

    invoke-static {v0, p0}, Landroidx/appcompat/view/menu/s81;->a(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/view/WindowInsetsAnimation$Bounds;

    move-result-object p0

    return-object p0
.end method

.method public static f(Landroid/view/WindowInsetsAnimation$Bounds;)Landroidx/appcompat/view/menu/h50;
    .locals 0

    invoke-static {p0}, Landroidx/appcompat/view/menu/v81;->a(Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/graphics/Insets;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/view/menu/h50;->d(Landroid/graphics/Insets;)Landroidx/appcompat/view/menu/h50;

    move-result-object p0

    return-object p0
.end method

.method public static g(Landroid/view/WindowInsetsAnimation$Bounds;)Landroidx/appcompat/view/menu/h50;
    .locals 0

    invoke-static {p0}, Landroidx/appcompat/view/menu/u81;->a(Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/graphics/Insets;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/view/menu/h50;->d(Landroid/graphics/Insets;)Landroidx/appcompat/view/menu/h50;

    move-result-object p0

    return-object p0
.end method

.method public static h(Landroid/view/View;Landroidx/appcompat/view/menu/l81$b;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Landroidx/appcompat/view/menu/l81$d$a;

    invoke-direct {v0, p1}, Landroidx/appcompat/view/menu/l81$d$a;-><init>(Landroidx/appcompat/view/menu/l81$b;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, v0}, Landroidx/appcompat/view/menu/o81;->a(Landroid/view/View;Landroid/view/WindowInsetsAnimation$Callback;)V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/l81$d;->e:Landroid/view/WindowInsetsAnimation;

    invoke-static {v0}, Landroidx/appcompat/view/menu/m81;->a(Landroid/view/WindowInsetsAnimation;)J

    move-result-wide v0

    return-wide v0
.end method

.method public b()F
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/l81$d;->e:Landroid/view/WindowInsetsAnimation;

    invoke-static {v0}, Landroidx/appcompat/view/menu/n81;->a(Landroid/view/WindowInsetsAnimation;)F

    move-result v0

    return v0
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/l81$d;->e:Landroid/view/WindowInsetsAnimation;

    invoke-static {v0}, Landroidx/appcompat/view/menu/p81;->a(Landroid/view/WindowInsetsAnimation;)I

    move-result v0

    return v0
.end method

.method public d(F)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/l81$d;->e:Landroid/view/WindowInsetsAnimation;

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/q81;->a(Landroid/view/WindowInsetsAnimation;F)V

    return-void
.end method
