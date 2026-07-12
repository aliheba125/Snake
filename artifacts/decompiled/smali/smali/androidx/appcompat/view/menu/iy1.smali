.class public final Landroidx/appcompat/view/menu/iy1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/appcompat/view/menu/jz1;

.field public final b:[B


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-array p1, p1, [B

    iput-object p1, p0, Landroidx/appcompat/view/menu/iy1;->b:[B

    .line 4
    invoke-static {p1}, Landroidx/appcompat/view/menu/jz1;->D([B)Landroidx/appcompat/view/menu/jz1;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/iy1;->a:Landroidx/appcompat/view/menu/jz1;

    return-void
.end method

.method public synthetic constructor <init>(ILandroidx/appcompat/view/menu/gy1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/iy1;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Landroidx/appcompat/view/menu/qx1;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/iy1;->a:Landroidx/appcompat/view/menu/jz1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/jz1;->E()V

    new-instance v0, Landroidx/appcompat/view/menu/ky1;

    iget-object v1, p0, Landroidx/appcompat/view/menu/iy1;->b:[B

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/ky1;-><init>([B)V

    return-object v0
.end method

.method public final b()Landroidx/appcompat/view/menu/jz1;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/iy1;->a:Landroidx/appcompat/view/menu/jz1;

    return-object v0
.end method
