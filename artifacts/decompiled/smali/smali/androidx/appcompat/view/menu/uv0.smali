.class public final Landroidx/appcompat/view/menu/uv0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/uv0$b;,
        Landroidx/appcompat/view/menu/uv0$c;,
        Landroidx/appcompat/view/menu/uv0$a;
    }
.end annotation


# instance fields
.field public final a:Landroidx/appcompat/view/menu/uv0$c;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, Landroidx/appcompat/view/menu/uv0$b;

    invoke-direct {v0, p1}, Landroidx/appcompat/view/menu/uv0$b;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/uv0;->a:Landroidx/appcompat/view/menu/uv0$c;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Landroidx/appcompat/view/menu/uv0$a;

    invoke-direct {v0, p1}, Landroidx/appcompat/view/menu/uv0$a;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/uv0;->a:Landroidx/appcompat/view/menu/uv0$c;

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/view/WindowInsetsController;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Landroidx/appcompat/view/menu/uv0$b;

    invoke-direct {v0, p1}, Landroidx/appcompat/view/menu/uv0$b;-><init>(Landroid/view/WindowInsetsController;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/uv0;->a:Landroidx/appcompat/view/menu/uv0$c;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/uv0;->a:Landroidx/appcompat/view/menu/uv0$c;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/uv0$c;->a()V

    return-void
.end method
