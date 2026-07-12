.class public final Landroidx/appcompat/view/menu/g51$b;
.super Landroidx/appcompat/view/menu/g80;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/dw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/g51;-><init>(IIILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic n:Landroidx/appcompat/view/menu/g51;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/g51;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/g51$b;->n:Landroidx/appcompat/view/menu/g51;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/g80;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/math/BigInteger;
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/g51$b;->n:Landroidx/appcompat/view/menu/g51;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g51;->h()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v2, p0, Landroidx/appcompat/view/menu/g51$b;->n:Landroidx/appcompat/view/menu/g51;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/g51;->i()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/g51$b;->n:Landroidx/appcompat/view/menu/g51;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/g51;->j()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g51$b;->a()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
