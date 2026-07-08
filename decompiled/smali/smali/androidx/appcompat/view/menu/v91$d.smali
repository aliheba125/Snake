.class public Landroidx/appcompat/view/menu/v91$d;
.super Landroidx/appcompat/view/menu/v91$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/v91;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final a:Landroidx/appcompat/view/menu/v91;

.field public final b:Landroid/view/WindowInsetsController;

.field public final c:Landroidx/appcompat/view/menu/uv0;

.field public final d:Landroidx/appcompat/view/menu/nu0;

.field public e:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/view/Window;Landroidx/appcompat/view/menu/v91;Landroidx/appcompat/view/menu/uv0;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroidx/appcompat/view/menu/w91;->a(Landroid/view/Window;)Landroid/view/WindowInsetsController;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroidx/appcompat/view/menu/v91$d;-><init>(Landroid/view/WindowInsetsController;Landroidx/appcompat/view/menu/v91;Landroidx/appcompat/view/menu/uv0;)V

    iput-object p1, p0, Landroidx/appcompat/view/menu/v91$d;->e:Landroid/view/Window;

    return-void
.end method

.method public constructor <init>(Landroid/view/WindowInsetsController;Landroidx/appcompat/view/menu/v91;Landroidx/appcompat/view/menu/uv0;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Landroidx/appcompat/view/menu/v91$e;-><init>()V

    .line 3
    new-instance v0, Landroidx/appcompat/view/menu/nu0;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/nu0;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/v91$d;->d:Landroidx/appcompat/view/menu/nu0;

    iput-object p1, p0, Landroidx/appcompat/view/menu/v91$d;->b:Landroid/view/WindowInsetsController;

    iput-object p2, p0, Landroidx/appcompat/view/menu/v91$d;->a:Landroidx/appcompat/view/menu/v91;

    iput-object p3, p0, Landroidx/appcompat/view/menu/v91$d;->c:Landroidx/appcompat/view/menu/uv0;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    const/16 v0, 0x10

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/appcompat/view/menu/v91$d;->e:Landroid/view/Window;

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/v91$d;->d(I)V

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/v91$d;->b:Landroid/view/WindowInsetsController;

    invoke-static {p1, v0, v0}, Landroidx/appcompat/view/menu/x91;->a(Landroid/view/WindowInsetsController;II)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/appcompat/view/menu/v91$d;->e:Landroid/view/Window;

    if-eqz p1, :cond_2

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/v91$d;->e(I)V

    :cond_2
    iget-object p1, p0, Landroidx/appcompat/view/menu/v91$d;->b:Landroid/view/WindowInsetsController;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroidx/appcompat/view/menu/x91;->a(Landroid/view/WindowInsetsController;II)V

    :goto_0
    return-void
.end method

.method public b(Z)V
    .locals 2

    const/16 v0, 0x2000

    const/16 v1, 0x8

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/appcompat/view/menu/v91$d;->e:Landroid/view/Window;

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/v91$d;->d(I)V

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/v91$d;->b:Landroid/view/WindowInsetsController;

    invoke-static {p1, v1, v1}, Landroidx/appcompat/view/menu/x91;->a(Landroid/view/WindowInsetsController;II)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/appcompat/view/menu/v91$d;->e:Landroid/view/Window;

    if-eqz p1, :cond_2

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/v91$d;->e(I)V

    :cond_2
    iget-object p1, p0, Landroidx/appcompat/view/menu/v91$d;->b:Landroid/view/WindowInsetsController;

    const/4 v0, 0x0

    invoke-static {p1, v0, v1}, Landroidx/appcompat/view/menu/x91;->a(Landroid/view/WindowInsetsController;II)V

    :goto_0
    return-void
.end method

.method public c(I)V
    .locals 1

    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/v91$d;->c:Landroidx/appcompat/view/menu/uv0;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/uv0;->a()V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/v91$d;->b:Landroid/view/WindowInsetsController;

    and-int/lit8 p1, p1, -0x9

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/xv0;->a(Landroid/view/WindowInsetsController;I)V

    return-void
.end method

.method public d(I)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/v91$d;->e:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public e(I)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/v91$d;->e:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    not-int p1, p1

    and-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method
