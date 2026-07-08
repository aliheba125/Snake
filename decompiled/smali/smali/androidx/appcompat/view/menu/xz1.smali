.class public abstract Landroidx/appcompat/view/menu/xz1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/appcompat/view/menu/vz1;

.field public static final b:Landroidx/appcompat/view/menu/vz1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/zz1;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/zz1;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/xz1;->a:Landroidx/appcompat/view/menu/vz1;

    invoke-static {}, Landroidx/appcompat/view/menu/xz1;->c()Landroidx/appcompat/view/menu/vz1;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/xz1;->b:Landroidx/appcompat/view/menu/vz1;

    return-void
.end method

.method public static a()Landroidx/appcompat/view/menu/vz1;
    .locals 2

    sget-object v0, Landroidx/appcompat/view/menu/xz1;->b:Landroidx/appcompat/view/menu/vz1;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Protobuf runtime is not correctly loaded."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b()Landroidx/appcompat/view/menu/vz1;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/xz1;->a:Landroidx/appcompat/view/menu/vz1;

    return-object v0
.end method

.method public static c()Landroidx/appcompat/view/menu/vz1;
    .locals 3

    :try_start_0
    const-string v0, "com.google.protobuf.ExtensionSchemaFull"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/vz1;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method
