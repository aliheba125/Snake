.class public Landroidx/appcompat/view/menu/xz0$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/xz0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Landroidx/appcompat/view/menu/xz0$g;

.field public final b:Z

.field public final c:Z


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/xz0$g;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/xz0$c;->a:Landroidx/appcompat/view/menu/xz0$g;

    iput-boolean p2, p0, Landroidx/appcompat/view/menu/xz0$c;->b:Z

    iput-boolean p3, p0, Landroidx/appcompat/view/menu/xz0$c;->c:Z

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Landroidx/appcompat/view/menu/xz0$c;
    .locals 5

    new-instance v0, Landroidx/appcompat/view/menu/xz0$c;

    const-string v1, "name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/appcompat/view/menu/xz0$g;->e(Ljava/lang/String;)Landroidx/appcompat/view/menu/xz0$g;

    move-result-object v1

    const-string v2, "signed"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v4, "decimal"

    invoke-virtual {p0, v4, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Landroidx/appcompat/view/menu/xz0$c;-><init>(Landroidx/appcompat/view/menu/xz0$g;ZZ)V

    return-object v0
.end method
