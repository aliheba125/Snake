.class public final Landroidx/appcompat/view/menu/v91;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/v91$d;,
        Landroidx/appcompat/view/menu/v91$e;,
        Landroidx/appcompat/view/menu/v91$c;,
        Landroidx/appcompat/view/menu/v91$b;,
        Landroidx/appcompat/view/menu/v91$a;
    }
.end annotation


# instance fields
.field public final a:Landroidx/appcompat/view/menu/v91$e;


# direct methods
.method public constructor <init>(Landroid/view/Window;Landroid/view/View;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroidx/appcompat/view/menu/uv0;

    invoke-direct {v0, p2}, Landroidx/appcompat/view/menu/uv0;-><init>(Landroid/view/View;)V

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt p2, v1, :cond_0

    .line 5
    new-instance p2, Landroidx/appcompat/view/menu/v91$d;

    invoke-direct {p2, p1, p0, v0}, Landroidx/appcompat/view/menu/v91$d;-><init>(Landroid/view/Window;Landroidx/appcompat/view/menu/v91;Landroidx/appcompat/view/menu/uv0;)V

    iput-object p2, p0, Landroidx/appcompat/view/menu/v91;->a:Landroidx/appcompat/view/menu/v91$e;

    goto :goto_0

    .line 6
    :cond_0
    new-instance p2, Landroidx/appcompat/view/menu/v91$c;

    invoke-direct {p2, p1, v0}, Landroidx/appcompat/view/menu/v91$c;-><init>(Landroid/view/Window;Landroidx/appcompat/view/menu/uv0;)V

    iput-object p2, p0, Landroidx/appcompat/view/menu/v91;->a:Landroidx/appcompat/view/menu/v91$e;

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/view/WindowInsetsController;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/appcompat/view/menu/v91$d;

    new-instance v1, Landroidx/appcompat/view/menu/uv0;

    invoke-direct {v1, p1}, Landroidx/appcompat/view/menu/uv0;-><init>(Landroid/view/WindowInsetsController;)V

    invoke-direct {v0, p1, p0, v1}, Landroidx/appcompat/view/menu/v91$d;-><init>(Landroid/view/WindowInsetsController;Landroidx/appcompat/view/menu/v91;Landroidx/appcompat/view/menu/uv0;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/v91;->a:Landroidx/appcompat/view/menu/v91$e;

    return-void
.end method

.method public static d(Landroid/view/WindowInsetsController;)Landroidx/appcompat/view/menu/v91;
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/v91;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/v91;-><init>(Landroid/view/WindowInsetsController;)V

    return-object v0
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/v91;->a:Landroidx/appcompat/view/menu/v91$e;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/v91$e;->a(Z)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/v91;->a:Landroidx/appcompat/view/menu/v91$e;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/v91$e;->b(Z)V

    return-void
.end method

.method public c(I)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/v91;->a:Landroidx/appcompat/view/menu/v91$e;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/v91$e;->c(I)V

    return-void
.end method
