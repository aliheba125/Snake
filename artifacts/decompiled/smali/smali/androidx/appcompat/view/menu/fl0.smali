.class public abstract Landroidx/appcompat/view/menu/fl0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/fl0;->a:Ljava/util/List;

    const-string v1, "io.adjoe.sdk.internal.SharedPreferencesProvider"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroidx/appcompat/view/menu/fl0;->a:Ljava/util/List;

    const-string v1, "io.adjoe.sdk.internal.DatabaseContentProvider"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroidx/appcompat/view/menu/fl0;->a:Ljava/util/List;

    const-string v1, "com.miniclip.madsandroidsdk.utils.MAdsContentProvider"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroidx/appcompat/view/menu/fl0;->a:Ljava/util/List;

    const-string v1, "io.bidmachine.BidMachineInitProvider"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroidx/appcompat/view/menu/fl0;->a:Ljava/util/List;

    const-string v1, "com.google.android.gms.ads.MobileAdsInitProvider"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroidx/appcompat/view/menu/fl0;->a:Ljava/util/List;

    const-string v1, "com.vungle.ads.VungleProvider"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroidx/appcompat/view/menu/fl0;->a:Ljava/util/List;

    const-string v1, "com.ironsource.lifecycle.IronsourceLifecycleProvider"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroidx/appcompat/view/menu/fl0;->a:Ljava/util/List;

    const-string v1, "com.ironsource.lifecycle.LevelPlayActivityLifecycleProvider"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroidx/appcompat/view/menu/fl0;->a:Ljava/util/List;

    const-string v1, "com.squareup.picasso.PicassoProvider"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroidx/appcompat/view/menu/fl0;->a:Ljava/util/List;

    const-string v1, "com.applovin.sdk.AppLovinInitProvider"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroidx/appcompat/view/menu/fl0;->a:Ljava/util/List;

    const-string v1, "com.mobilefuse.sdk.MobileFuseSdkInitProvider"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroidx/appcompat/view/menu/fl0;->a:Ljava/util/List;

    const-string v1, "com.smaato.sdk.core.lifecycle.ProcessLifecycleOwnerInitialize"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroidx/appcompat/view/menu/fl0;->a:Ljava/util/List;

    const-string v1, "com.smaato.sdk.core.lifecycle.ProcessLifecycleOwnerInitializer"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroidx/appcompat/view/menu/fl0;->a:Ljava/util/List;

    const-string v1, "com.facebook.ads.AudienceNetworkContentProvider"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroidx/appcompat/view/menu/fl0;->a:Ljava/util/List;

    const-string v1, "com.miniclip.madsandroidsdk.config.MAdsContentProvider"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Ljava/util/List;)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ProviderInfo;

    invoke-static {v1}, Landroidx/appcompat/view/menu/fl0;->b(Landroid/content/pm/ProviderInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public static b(Landroid/content/pm/ProviderInfo;)Z
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/fl0;->a:Ljava/util/List;

    iget-object p0, p0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
