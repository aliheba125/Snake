.class public final Landroidx/appcompat/view/menu/uf$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/uf$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/uf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public a:Landroid/content/ClipData;

.field public b:I

.field public c:I

.field public d:Landroid/net/Uri;

.field public e:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/ClipData;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/uf$d;->a:Landroid/content/ClipData;

    iput p2, p0, Landroidx/appcompat/view/menu/uf$d;->b:I

    return-void
.end method


# virtual methods
.method public a()Landroidx/appcompat/view/menu/uf;
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/uf;

    new-instance v1, Landroidx/appcompat/view/menu/uf$g;

    invoke-direct {v1, p0}, Landroidx/appcompat/view/menu/uf$g;-><init>(Landroidx/appcompat/view/menu/uf$d;)V

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/uf;-><init>(Landroidx/appcompat/view/menu/uf$f;)V

    return-object v0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/uf$d;->e:Landroid/os/Bundle;

    return-void
.end method

.method public c(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/uf$d;->d:Landroid/net/Uri;

    return-void
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/view/menu/uf$d;->c:I

    return-void
.end method
