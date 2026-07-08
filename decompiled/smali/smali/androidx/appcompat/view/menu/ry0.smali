.class public Landroidx/appcompat/view/menu/ry0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/appcompat/view/menu/f8;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/si;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/appcompat/view/menu/f8;

    const-string v1, "flutter/system"

    sget-object v2, Landroidx/appcompat/view/menu/m60;->a:Landroidx/appcompat/view/menu/m60;

    invoke-direct {v0, p1, v1, v2}, Landroidx/appcompat/view/menu/f8;-><init>(Landroidx/appcompat/view/menu/i8;Ljava/lang/String;Landroidx/appcompat/view/menu/xc0;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/ry0;->a:Landroidx/appcompat/view/menu/f8;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const-string v0, "SystemChannel"

    const-string v1, "Sending memory pressure warning to Flutter."

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/ea0;->f(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "type"

    const-string v2, "memoryPressure"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroidx/appcompat/view/menu/ry0;->a:Landroidx/appcompat/view/menu/f8;

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/f8;->c(Ljava/lang/Object;)V

    return-void
.end method
