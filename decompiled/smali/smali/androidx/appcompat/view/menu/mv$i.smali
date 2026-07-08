.class public Landroidx/appcompat/view/menu/mv$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/mv$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/mv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "i"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:I

.field public final synthetic d:Landroidx/appcompat/view/menu/mv;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/mv;Ljava/lang/String;II)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/mv$i;->d:Landroidx/appcompat/view/menu/mv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/appcompat/view/menu/mv$i;->a:Ljava/lang/String;

    iput p3, p0, Landroidx/appcompat/view/menu/mv$i;->b:I

    iput p4, p0, Landroidx/appcompat/view/menu/mv$i;->c:I

    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 6

    iget-object v0, p0, Landroidx/appcompat/view/menu/mv$i;->d:Landroidx/appcompat/view/menu/mv;

    iget-object v0, v0, Landroidx/appcompat/view/menu/mv;->z:Landroidx/appcompat/view/menu/av;

    if-eqz v0, :cond_0

    iget v1, p0, Landroidx/appcompat/view/menu/mv$i;->b:I

    if-gez v1, :cond_0

    iget-object v1, p0, Landroidx/appcompat/view/menu/mv$i;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/av;->p()Landroidx/appcompat/view/menu/mv;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mv;->M0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/mv$i;->d:Landroidx/appcompat/view/menu/mv;

    iget-object v3, p0, Landroidx/appcompat/view/menu/mv$i;->a:Ljava/lang/String;

    iget v4, p0, Landroidx/appcompat/view/menu/mv$i;->b:I

    iget v5, p0, Landroidx/appcompat/view/menu/mv$i;->c:I

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/view/menu/mv;->P0(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result p1

    return p1
.end method
