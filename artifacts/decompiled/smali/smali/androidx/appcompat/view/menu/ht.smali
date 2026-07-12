.class public Landroidx/appcompat/view/menu/ht;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static b:Landroidx/appcompat/view/menu/ht;


# instance fields
.field public final a:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/ht;->a:Ljava/util/Map;

    return-void
.end method

.method public static b()Landroidx/appcompat/view/menu/ht;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/ht;->b:Landroidx/appcompat/view/menu/ht;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/view/menu/ht;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/ht;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/ht;->b:Landroidx/appcompat/view/menu/ht;

    :cond_0
    sget-object v0, Landroidx/appcompat/view/menu/ht;->b:Landroidx/appcompat/view/menu/ht;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lio/flutter/embedding/engine/a;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ht;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/flutter/embedding/engine/a;

    return-object p1
.end method

.method public c(Ljava/lang/String;Lio/flutter/embedding/engine/a;)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/ht;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Landroidx/appcompat/view/menu/ht;->a:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/ht;->c(Ljava/lang/String;Lio/flutter/embedding/engine/a;)V

    return-void
.end method
