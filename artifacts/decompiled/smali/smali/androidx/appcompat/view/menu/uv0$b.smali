.class public Landroidx/appcompat/view/menu/uv0$b;
.super Landroidx/appcompat/view/menu/uv0$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/uv0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public b:Landroid/view/View;

.field public c:Landroid/view/WindowInsetsController;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/uv0$a;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroidx/appcompat/view/menu/uv0$b;->b:Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/view/WindowInsetsController;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Landroidx/appcompat/view/menu/uv0$a;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroidx/appcompat/view/menu/uv0$b;->c:Landroid/view/WindowInsetsController;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/uv0$b;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-ge v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/uv0$b;->c:Landroid/view/WindowInsetsController;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/uv0$b;->b:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-static {v0}, Landroidx/appcompat/view/menu/vv0;->a(Landroid/view/View;)Landroid/view/WindowInsetsController;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/appcompat/view/menu/wv0;->a()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/xv0;->a(Landroid/view/WindowInsetsController;I)V

    :cond_3
    invoke-super {p0}, Landroidx/appcompat/view/menu/uv0$a;->a()V

    return-void
.end method
