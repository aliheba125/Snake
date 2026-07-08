.class public Landroidx/appcompat/view/menu/p9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/appcompat/view/menu/wu$c;

.field public final b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/wu$c;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/p9;->a:Landroidx/appcompat/view/menu/wu$c;

    iput-object p2, p0, Landroidx/appcompat/view/menu/p9;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/p9;->a:Landroidx/appcompat/view/menu/wu$c;

    iget-object v1, p0, Landroidx/appcompat/view/menu/p9;->b:Landroid/os/Handler;

    new-instance v2, Landroidx/appcompat/view/menu/p9$b;

    invoke-direct {v2, p0, v0, p1}, Landroidx/appcompat/view/menu/p9$b;-><init>(Landroidx/appcompat/view/menu/p9;Landroidx/appcompat/view/menu/wu$c;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(Landroidx/appcompat/view/menu/uu$e;)V
    .locals 1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/uu$e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Landroidx/appcompat/view/menu/uu$e;->a:Landroid/graphics/Typeface;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/p9;->c(Landroid/graphics/Typeface;)V

    goto :goto_0

    :cond_0
    iget p1, p1, Landroidx/appcompat/view/menu/uu$e;->b:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/p9;->a(I)V

    :goto_0
    return-void
.end method

.method public final c(Landroid/graphics/Typeface;)V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/p9;->a:Landroidx/appcompat/view/menu/wu$c;

    iget-object v1, p0, Landroidx/appcompat/view/menu/p9;->b:Landroid/os/Handler;

    new-instance v2, Landroidx/appcompat/view/menu/p9$a;

    invoke-direct {v2, p0, v0, p1}, Landroidx/appcompat/view/menu/p9$a;-><init>(Landroidx/appcompat/view/menu/p9;Landroidx/appcompat/view/menu/wu$c;Landroid/graphics/Typeface;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
