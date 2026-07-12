.class public final Landroidx/appcompat/view/menu/uf$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/uf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Landroidx/appcompat/view/menu/uf$c;


# direct methods
.method public constructor <init>(Landroid/content/ClipData;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    new-instance v0, Landroidx/appcompat/view/menu/uf$b;

    invoke-direct {v0, p1, p2}, Landroidx/appcompat/view/menu/uf$b;-><init>(Landroid/content/ClipData;I)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/uf$a;->a:Landroidx/appcompat/view/menu/uf$c;

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/appcompat/view/menu/uf$d;

    invoke-direct {v0, p1, p2}, Landroidx/appcompat/view/menu/uf$d;-><init>(Landroid/content/ClipData;I)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/uf$a;->a:Landroidx/appcompat/view/menu/uf$c;

    :goto_0
    return-void
.end method


# virtual methods
.method public a()Landroidx/appcompat/view/menu/uf;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/uf$a;->a:Landroidx/appcompat/view/menu/uf$c;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/uf$c;->a()Landroidx/appcompat/view/menu/uf;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/os/Bundle;)Landroidx/appcompat/view/menu/uf$a;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/uf$a;->a:Landroidx/appcompat/view/menu/uf$c;

    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/uf$c;->b(Landroid/os/Bundle;)V

    return-object p0
.end method

.method public c(I)Landroidx/appcompat/view/menu/uf$a;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/uf$a;->a:Landroidx/appcompat/view/menu/uf$c;

    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/uf$c;->d(I)V

    return-object p0
.end method

.method public d(Landroid/net/Uri;)Landroidx/appcompat/view/menu/uf$a;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/uf$a;->a:Landroidx/appcompat/view/menu/uf$c;

    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/uf$c;->c(Landroid/net/Uri;)V

    return-object p0
.end method
