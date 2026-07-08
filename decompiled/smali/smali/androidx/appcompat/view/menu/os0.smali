.class public final Landroidx/appcompat/view/menu/os0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/ts;


# instance fields
.field public final a:Landroidx/appcompat/view/menu/ls0;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/ls0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/os0;->a:Landroidx/appcompat/view/menu/ls0;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Landroidx/appcompat/view/menu/xg;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/os0;->a:Landroidx/appcompat/view/menu/ls0;

    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/menu/ls0;->q(Ljava/lang/Object;Landroidx/appcompat/view/menu/xg;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Landroidx/appcompat/view/menu/a60;->c()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Landroidx/appcompat/view/menu/r31;->a:Landroidx/appcompat/view/menu/r31;

    return-object p1
.end method
