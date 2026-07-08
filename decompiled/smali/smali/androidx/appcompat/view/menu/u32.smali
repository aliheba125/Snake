.class public abstract Landroidx/appcompat/view/menu/u32;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/appcompat/view/menu/q32;

.field public static final b:Landroidx/appcompat/view/menu/q32;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/u32;->c()Landroidx/appcompat/view/menu/q32;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/u32;->a:Landroidx/appcompat/view/menu/q32;

    new-instance v0, Landroidx/appcompat/view/menu/o32;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/o32;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/u32;->b:Landroidx/appcompat/view/menu/q32;

    return-void
.end method

.method public static a()Landroidx/appcompat/view/menu/q32;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/u32;->a:Landroidx/appcompat/view/menu/q32;

    return-object v0
.end method

.method public static b()Landroidx/appcompat/view/menu/q32;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/u32;->b:Landroidx/appcompat/view/menu/q32;

    return-object v0
.end method

.method public static c()Landroidx/appcompat/view/menu/q32;
    .locals 3

    :try_start_0
    const-string v0, "com.google.protobuf.MapFieldSchemaFull"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/q32;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method
