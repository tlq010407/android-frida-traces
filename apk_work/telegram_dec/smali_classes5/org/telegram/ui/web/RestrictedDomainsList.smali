.class public Lorg/telegram/ui/web/RestrictedDomainsList;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static instance:Lorg/telegram/ui/web/RestrictedDomainsList;


# instance fields
.field private loaded:Z

.field public final openedDomains:Ljava/util/HashMap;

.field public final restrictedDomains:Ljava/util/ArrayList;

.field public final restrictedDomainsSet:Ljava/util/HashSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/web/RestrictedDomainsList;->openedDomains:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/web/RestrictedDomainsList;->restrictedDomainsSet:Ljava/util/HashSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/web/RestrictedDomainsList;->restrictedDomains:Ljava/util/ArrayList;

    return-void
.end method

.method public static getInstance()Lorg/telegram/ui/web/RestrictedDomainsList;
    .locals 1

    sget-object v0, Lorg/telegram/ui/web/RestrictedDomainsList;->instance:Lorg/telegram/ui/web/RestrictedDomainsList;

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/ui/web/RestrictedDomainsList;

    invoke-direct {v0}, Lorg/telegram/ui/web/RestrictedDomainsList;-><init>()V

    sput-object v0, Lorg/telegram/ui/web/RestrictedDomainsList;->instance:Lorg/telegram/ui/web/RestrictedDomainsList;

    :cond_0
    sget-object v0, Lorg/telegram/ui/web/RestrictedDomainsList;->instance:Lorg/telegram/ui/web/RestrictedDomainsList;

    return-object v0
.end method


# virtual methods
.method public incrementOpen(Ljava/lang/String;)I
    .locals 3

    invoke-virtual {p0}, Lorg/telegram/ui/web/RestrictedDomainsList;->load()V

    iget-object v0, p0, Lorg/telegram/ui/web/RestrictedDomainsList;->openedDomains:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/web/RestrictedDomainsList;->openedDomains:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/telegram/ui/web/RestrictedDomainsList;->scheduleSave()V

    return v0
.end method

.method public isRestricted(Ljava/lang/String;)Z
    .locals 1

    .line 0
    invoke-virtual {p0}, Lorg/telegram/ui/web/RestrictedDomainsList;->load()V

    iget-object v0, p0, Lorg/telegram/ui/web/RestrictedDomainsList;->restrictedDomainsSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public varargs isRestricted([Ljava/lang/String;)Z
    .locals 5

    .line 0
    invoke-virtual {p0}, Lorg/telegram/ui/web/RestrictedDomainsList;->load()V

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    iget-object v4, p0, Lorg/telegram/ui/web/RestrictedDomainsList;->restrictedDomainsSet:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public load()V
    .locals 8

    iget-boolean v0, p0, Lorg/telegram/ui/web/RestrictedDomainsList;->loaded:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "web_opened_domains"

    const-string v3, "{}"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lorg/telegram/ui/web/RestrictedDomainsList;->openedDomains:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    :try_start_1
    new-instance v1, Lorg/json/JSONArray;

    const-string v2, "web_restricted_domains2"

    const-string v3, "[]"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_2

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/web/RestrictedDomainsList;->restrictedDomainsSet:Ljava/util/HashSet;

    invoke-virtual {v7, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/web/RestrictedDomainsList;->restrictedDomains:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :goto_3
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/web/RestrictedDomainsList;->loaded:Z

    return-void
.end method

.method public save()V
    .locals 6

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object v2, p0, Lorg/telegram/ui/web/RestrictedDomainsList;->openedDomains:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    const-string v2, "web_opened_domains"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_2
    :try_start_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v2, p0, Lorg/telegram/ui/web/RestrictedDomainsList;->restrictedDomains:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_5

    :cond_1
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3

    :cond_2
    const-string v2, "web_restricted_domains2"

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :goto_5
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_6
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public scheduleSave()V
    .locals 3

    new-instance v0, Lorg/telegram/ui/web/RestrictedDomainsList$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/web/RestrictedDomainsList$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/web/RestrictedDomainsList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    new-instance v0, Lorg/telegram/ui/web/RestrictedDomainsList$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/web/RestrictedDomainsList$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/web/RestrictedDomainsList;)V

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public varargs setRestricted(Z[Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p0}, Lorg/telegram/ui/web/RestrictedDomainsList;->load()V

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/web/RestrictedDomainsList;->restrictedDomains:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    const/4 v3, 0x0

    :goto_1
    array-length v4, p2

    if-ge v3, v4, :cond_1

    aget-object v4, p2, v3

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/telegram/ui/web/RestrictedDomainsList;->restrictedDomains:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    aget-object v5, p2, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ltz v0, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    invoke-virtual {p0, p2}, Lorg/telegram/ui/web/RestrictedDomainsList;->isRestricted([Ljava/lang/String;)Z

    move-result v2

    if-eq p1, v2, :cond_7

    if-eqz p1, :cond_6

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_4
    array-length v0, p2

    if-ge v1, v0, :cond_5

    aget-object v0, p2, v1

    if-eqz v0, :cond_4

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/web/RestrictedDomainsList;->restrictedDomainsSet:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    iget-object p2, p0, Lorg/telegram/ui/web/RestrictedDomainsList;->restrictedDomains:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/web/RestrictedDomainsList;->restrictedDomainsSet:Ljava/util/HashSet;

    iget-object p2, p0, Lorg/telegram/ui/web/RestrictedDomainsList;->restrictedDomains:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p1, p2}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    :goto_5
    invoke-virtual {p0}, Lorg/telegram/ui/web/RestrictedDomainsList;->scheduleSave()V

    :cond_7
    return-void
.end method
