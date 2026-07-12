.class public final Landroidx/appcompat/view/menu/o82$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/o82;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public b:J


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/o82;)V
    .locals 1

    .line 3
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/o82;->n0()Landroidx/appcompat/view/menu/x92;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/x92;->S0()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/view/menu/o82$b;-><init>(Landroidx/appcompat/view/menu/o82;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/o82;Landroidx/appcompat/view/menu/g92;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/o82$b;-><init>(Landroidx/appcompat/view/menu/o82;)V

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/view/menu/o82;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/appcompat/view/menu/o82$b;->a:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/o82;->b()Landroidx/appcompat/view/menu/cc;

    move-result-object p1

    invoke-interface {p1}, Landroidx/appcompat/view/menu/cc;->b()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/appcompat/view/menu/o82$b;->b:J

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/o82;Ljava/lang/String;Landroidx/appcompat/view/menu/g92;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/view/menu/o82$b;-><init>(Landroidx/appcompat/view/menu/o82;Ljava/lang/String;)V

    return-void
.end method
